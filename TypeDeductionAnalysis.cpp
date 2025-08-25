#include "Debug/Logger.hpp"
#include "TransparentType.hpp"
#include "TypeDeductionAnalysis.hpp"
#include "TypeDeductionAnalysisInfo.hpp"

#include <llvm/IR/Constants.h>
#include <llvm/IR/InstIterator.h>
#include <llvm/IR/Instructions.h>

#define DEBUG_TYPE "tda"

using namespace llvm;
using namespace tda;

AnalysisKey TypeDeductionAnalysis::Key;

TypeDeductionAnalysis::Result TypeDeductionAnalysis::run(Module& m, ModuleAnalysisManager&) {
  LLVM_DEBUG(log().logln("[TypeDeductionAnalysis]", Logger::Magenta));
  Result result;

  TypeDeductionAnalysisInfo::getInstance().initialize(m);

  LLVM_DEBUG(log().logln("[Deduction iteration 0]", Logger::Blue););
  for (Function& f : m) {
    if (f.isDeclaration()) {
      // Cannot deduce the type of a declaration: just save the transparent type of the value (could be opaque pointer)
      result.transparentTypes[&f] = TransparentTypeFactory::create(&f);
      continue;
    }
    // Deduce instructions' types
    for (Instruction& inst : instructions(f)) {
      deducePointerType(&inst);
      // Also save the transparent type of constants
      for (Use& operand : inst.operands())
        if (auto* constant = dyn_cast<Constant>(operand.get()))
          result.transparentTypes[constant] = TransparentTypeFactory::create(constant);
    }
    // Deduce function arguments' types
    for (Argument& arg : f.args())
      deducePointerType(&arg);
    // Deduce functions' types
    deducePointerType(&f);
  }
  // Deduce global values' types
  for (GlobalValue& globalValue : m.globals())
    deducePointerType(&globalValue);

  // Continue deducing types until there is no change
  unsigned iterations = 1;
  bool deducedTypesChanged = true;
  while (deducedTypesChanged) {
    LLVM_DEBUG(log() << Logger::Blue << "[Deduction iteration " << iterations << "]\n"
                     << Logger::Reset);
    iterations++;
    deducedTypesChanged = false;
    for (const auto& [value, currentDeducedType] : deducedTypes)
      deducedTypesChanged |= deducePointerType(value, currentDeducedType.get());
  }
  LLVM_DEBUG(log().logln("[Deduction completed]", Logger::Blue));
  LLVM_DEBUG(logDeducedTypes());

  // Save deduced transparent types
  for (auto [value, deducedType] : deducedTypes)
    if (deducedType)
      result.transparentTypes[value] = std::move(deducedType);

  LLVM_DEBUG(log().logln("[End of TypeDeductionAnalysis]", Logger::Magenta));
  return result;
}

bool TypeDeductionAnalysis::deducePointerType(Value* value, TransparentType* currentDeducedType) {
  bool deducedTypesChanged = false;
  if (!currentDeducedType)
    currentDeducedType = deducedTypes[value].get();
  if (currentDeducedType && !currentDeducedType->isOpaquePointer())
    return false;
  Logger& logger = log();
  LLVM_DEBUG(logger.log("[Deducing type of] ", Logger::Bold).logValueln(value));
  auto indenter = logger.getIndenter();
  indenter.increaseIndent();

  CandidateSet* candidateTypes;
  if (auto* function = dyn_cast<Function>(value))
    candidateTypes = &deduceFunctionPointerType(function);
  else if (auto* argument = dyn_cast<Argument>(value))
    candidateTypes = &deduceArgumentPointerType(argument);
  else
    candidateTypes = &deduceValuePointerType(value);
  candidateTypes->insert(TransparentTypeFactory::create(value));

  std::unique_ptr<TransparentType> newPointerType = getBestCandidateType(*candidateTypes);
  LLVM_DEBUG(logDeduction(newPointerType.get(), *candidateTypes));
  if (!newPointerType)
    return false;
  if (!currentDeducedType || *newPointerType != *currentDeducedType) {
    deducedTypes[value] = std::move(newPointerType);
    deducedTypesChanged = true;
  }
  return deducedTypesChanged;
}

TypeDeductionAnalysis::CandidateSet& TypeDeductionAnalysis::deduceValuePointerType(Value* value) {
  CandidateSet& candidateTypes = this->candidateTypes[value];

  // Deduce from value
  if (auto* globalVar = dyn_cast<GlobalVariable>(value)) {
    if (globalVar->hasInitializer()) {
      std::unique_ptr<TransparentType> candidateType = getOrCreateDeducedType(globalVar->getInitializer())->clone();
      candidateType->incrementIndirections(1);
      candidateTypes.emplace(std::move(candidateType));
    }
  }
  else if (auto* allocaInst = dyn_cast<AllocaInst>(value))
    candidateTypes.emplace(TransparentTypeFactory::create(allocaInst->getAllocatedType(), 1));
  else if (auto* loadInst = dyn_cast<LoadInst>(value)) {
    std::unique_ptr<TransparentType> candidateType = getOrCreateDeducedType(loadInst->getPointerOperand())->clone();
    if (candidateType->getIndirections() > 0)
      candidateType->incrementIndirections(-1);
    TransparentType* currType = candidateType.get();
    while (true) {
      auto* currStructType = dyn_cast<TransparentStructType>(currType);
      if (!currStructType || currStructType->getIndirections() > 0)
        break;
      currType = currStructType->getFieldType(0);
    }
    if (candidateType.get() != currType)
      candidateType = currType->clone();
    candidateTypes.emplace(std::move(candidateType));
  }
  else if (auto* gepInst = dyn_cast<GetElementPtrInst>(value)) {
    std::unique_ptr<TransparentType> candidateType = getOrCreateDeducedType(gepInst->getPointerOperand())->clone();
    TransparentType* currType = candidateType.get();
    bool first = true;
    for (Value* index : gepInst->indices()) {
      if (first) {
        if (!isa<ConstantInt>(index) || cast<ConstantInt>(index)->getZExtValue() != 0) {
          // We don't really know which type we are looking at when the first index is different from 0
          // At most we can get some information directly from the gep source type
          Type* sourceElementType = gepInst->getSourceElementType();
          candidateType =
            !sourceElementType->isPointerTy() ? TransparentTypeFactory::create(sourceElementType) : nullptr;
          currType = nullptr;
          break;
        }
        first = false;
        if (currType->getIndirections() > 0)
          currType->incrementIndirections(-1);
        continue;
      }
      if (auto* structType = dyn_cast<TransparentStructType>(candidateType.get())) {
        unsigned fieldIndex = cast<ConstantInt>(index)->getZExtValue();
        currType = structType->getFieldType(fieldIndex);
      }
      else if (auto* arrayType = dyn_cast<TransparentArrayType>(candidateType.get())) {
        // any array index selects the element type
        currType = arrayType->getArrayElementType();
      }
      else
        llvm_unreachable("Invalid gep instruction");
    }
    if (currType) {
      candidateType = currType->clone();
      candidateType->incrementIndirections(1);
      candidateTypes.emplace(std::move(candidateType));
    }
  }
  else if (auto* callInst = dyn_cast<CallBase>(value)) {
    if (Function* calledFunction = callInst->getCalledFunction())
      candidateTypes.emplace(getOrCreateDeducedType(calledFunction)->clone());
  }

  // Deduce from users
  for (User* user : value->users()) {
    if (auto* loadInst = dyn_cast<LoadInst>(user)) {
      std::unique_ptr<TransparentType> candidateType = getOrCreateDeducedType(loadInst)->clone();
      candidateType->incrementIndirections(1);
      candidateTypes.emplace(std::move(candidateType));
    }
    else if (auto* storeInst = dyn_cast<StoreInst>(user)) {
      if (value == storeInst->getPointerOperand()) {
        std::unique_ptr<TransparentType> candidateType = getOrCreateDeducedType(storeInst->getValueOperand())->clone();
        candidateType->incrementIndirections(1);
        candidateTypes.emplace(std::move(candidateType));
      }
      if (value == storeInst->getValueOperand()) {
        std::unique_ptr<TransparentType> candidateType =
          getOrCreateDeducedType(storeInst->getPointerOperand())->clone();
        if (candidateType->getIndirections() > 0)
          candidateType->incrementIndirections(-1);
        candidateTypes.emplace(std::move(candidateType));
      }
    }
    else if (auto* gepInst = dyn_cast<GetElementPtrInst>(user)) {
      if (value == gepInst->getPointerOperand()) {
        // Lambda to get the best candidate type between a type contained in the pointer operand of the gep
        // and the type of the gep itself
        auto getNewContainedType = [this,
                                    &gepInst](const TransparentType* oldType) -> std::unique_ptr<TransparentType> {
          std::unique_ptr<TransparentType> candidateType = getOrCreateDeducedType(gepInst)->clone();
          if (candidateType->getIndirections() > 0)
            candidateType->incrementIndirections(-1);
          CandidateSet candidates;
          candidates.emplace(oldType->clone());
          candidates.emplace(std::move(candidateType));
          return getBestCandidateType(candidates);
        };

        // Search for a coherent candide type, or create it if not present
        auto iter = std::ranges::find_if(candidateTypes, [gepInst](const std::unique_ptr<TransparentType>& type) {
          return type->getUnwrappedLLVMType() == gepInst->getSourceElementType() && type->getIndirections() == 1;
        });
        std::unique_ptr<TransparentType> candidateType;
        if (iter != candidateTypes.end())
          candidateType = (*iter)->clone();
        else
          candidateType = TransparentTypeFactory::create(gepInst->getSourceElementType(), 1);
        TransparentType* currType = candidateType.get();
        unsigned indexCount = 0;
        unsigned numIndices = gepInst->getNumIndices();
        bool isLastIndex = false;
        bool first = true;
        for (Value* index : gepInst->indices()) {
          indexCount++;
          isLastIndex = (indexCount == numIndices);
          if (first) {
            if (!isa<ConstantInt>(index) || cast<ConstantInt>(index)->getZExtValue() != 0) {
              // We don't really know which type we are looking at when the first index is different from 0
              break;
            }
            first = false;
            continue;
          }
          if (auto structType = dyn_cast<TransparentStructType>(currType)) {
            unsigned fieldIndex = cast<ConstantInt>(index)->getZExtValue();
            if (isLastIndex)
              structType->setFieldType(fieldIndex, getNewContainedType(structType->getFieldType(fieldIndex)));
            else
              currType = structType->getFieldType(fieldIndex);
          }
          else if (auto arrayType = dyn_cast<TransparentArrayType>(currType)) {
            // any array index selects the element type
            if (isLastIndex)
              arrayType->setArrayElementType(getNewContainedType(arrayType->getArrayElementType()));
            else
              currType = arrayType->getArrayElementType();
          }
          else
            llvm_unreachable("Invalid gep instruction");
        }
        candidateTypes.emplace(std::move(candidateType));
      }
    }
    else if (auto* callInst = dyn_cast<CallBase>(user)) {
      if (Function* calledFunction = callInst->getCalledFunction())
        for (unsigned i = 0; i < calledFunction->arg_size(); i++) {
          Value* arg = callInst->getArgOperand(i);
          if (arg == value) {
            candidateTypes.emplace(getOrCreateDeducedType(calledFunction->getArg(i))->clone());
            break;
          }
        }
    }
  }
  return candidateTypes;
}

TypeDeductionAnalysis::CandidateSet& TypeDeductionAnalysis::deduceFunctionPointerType(Function* function) {
  CandidateSet& candidateTypes = this->candidateTypes[function];
  for (BasicBlock& bb : *function) {
    Instruction* termInst = bb.getTerminator();
    if (auto* returnInst = dyn_cast<ReturnInst>(termInst))
      if (Value* retValue = returnInst->getReturnValue())
        candidateTypes.emplace(getOrCreateDeducedType(retValue)->clone());
  }
  return candidateTypes;
}

TypeDeductionAnalysis::CandidateSet& TypeDeductionAnalysis::deduceArgumentPointerType(Argument* argument) {
  CandidateSet& candidateTypes = this->candidateTypes[argument];

  unsigned argIndex = argument->getArgNo();
  Function* parentF = argument->getParent();
  for (User* functionUser : parentF->users())
    if (auto* callBase = dyn_cast<CallBase>(functionUser))
      if (callBase->getCalledFunction() == parentF)
        if (argIndex < callBase->arg_size()) {
          Value* value = callBase->getArgOperand(argIndex);
          candidateTypes.emplace(getOrCreateDeducedType(value)->clone());
        }
  candidateTypes.merge(deduceValuePointerType(argument));
  return candidateTypes;
}

const TransparentType* TypeDeductionAnalysis::getOrCreateDeducedType(Value* value) {
  auto iter = deducedTypes.find(value);
  if (iter != deducedTypes.end() && iter->second)
    return iter->second.get();
  const TransparentType* type = (deducedTypes[value] = TransparentTypeFactory::create(value)).get();
  LLVM_DEBUG(
    Logger& logger = log();
    logger.logln("created initial type during deduction process:", Logger::Yellow);
    auto indenter = logger.getIndenter();
    indenter.increaseIndent();
    logger.log("value: ").logValueln(value);
    logger.log("type:  ").logln(*type, Logger::Cyan););
  return type;
}

std::unique_ptr<TransparentType> TypeDeductionAnalysis::getBestCandidateType(const CandidateSet& candidates) const {
  if (candidates.empty())
    return nullptr;

  TransparentType* bestCandidate = nullptr;
  for (const std::unique_ptr<TransparentType>& candidate : candidates) {
    if (!candidate)
      continue;
    if (!bestCandidate)
      bestCandidate = candidate.get();
    else if (isa<TransparentStructType>(candidate.get()) && isa<TransparentStructType>(bestCandidate)) {
      const auto& candidateStruct = cast<TransparentStructType>(*candidate);
      const auto& bestCandidateStruct = cast<TransparentStructType>(*bestCandidate);
      if (candidateStruct.getNumFieldTypes() == bestCandidateStruct.getNumFieldTypes()) {
        if (candidate->compareTransparency(*bestCandidate) == 1)
          bestCandidate = candidate.get();
      }
    }
    else if (candidate->compareTransparency(*bestCandidate) == 1) {
      // TODO implement strict aliasing rule and most information detain
      bestCandidate = candidate.get();
    }
  }
  return bestCandidate ? bestCandidate->clone() : nullptr;
}

void TypeDeductionAnalysis::logDeduction(const TransparentType* bestCandidate, const CandidateSet& candidates) {
  Logger& logger = log();
  logger.log("current candidates: ").logln(candidates);
  logger.log("best candidate is ");
  if (bestCandidate)
    logger.logln(*bestCandidate, Logger::Cyan);
  else
    logger.logln("ambiguous", Logger::Yellow);
}

void TypeDeductionAnalysis::logDeducedTypes() {
  Logger& logger = log();
  logger.logln("[Results]", Logger::Green);
  for (const auto& [value, deducedType] : deducedTypes) {
    logger.log("[Value] ", Logger::Bold).logValueln(value);
    auto indenter = logger.getIndenter();
    indenter.increaseIndent();
    logger.log("deduced pointer type: ");
    if (deducedType) {
      auto color = deducedType->isOpaquePointer() ? Logger::Yellow : Logger::Green;
      logger.logln(deducedType, color);
    }
    else {
      logger.log("ambiguous: ", Logger::Yellow);
      CandidateSet& candidates = candidateTypes[value];
      candidates.erase(nullptr);
      if (!candidates.empty()) {
        logger.log("candidate types: ", Logger::Yellow);
        logger.logln(candidates, Logger::Yellow);
      }
      else
        logger.logln("no candidate types", Logger::Red);
    }
  }
}
