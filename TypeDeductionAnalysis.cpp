#include "Debug/Logger.hpp"
#include "TransparentType.hpp"
#include "TypeDeductionAnalysis.hpp"
#include "TypeDeductionAnalysisInfo.hpp"

#include <llvm/IR/Constants.h>
#include <llvm/IR/InstIterator.h>
#include <llvm/IR/Instructions.h>

#define DEBUG_TYPE "TypeDeductionAnalysis"

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
      if (inst.getType()->isPointerTy())
        deducePointerType(&inst);
      else // If there is nothing to deduce just save the transparent type of the value
        result.transparentTypes[&inst] = TransparentTypeFactory::create(&inst);
      // Also save the transparent type of constants
      for (Use& operand : inst.operands())
        if (auto* constant = dyn_cast<Constant>(operand.get()))
          result.transparentTypes[constant] = TransparentTypeFactory::create(constant);
    }
    // Deduce function arguments' types
    for (Argument& arg : f.args())
      if (arg.getType()->isPointerTy())
        deducePointerType(&arg);
      else // If there is nothing to deduce just save the transparent type of the value
        result.transparentTypes[&arg] = TransparentTypeFactory::create(&arg);
    // Deduce functions' types
    if (f.getReturnType()->isPointerTy())
      deducePointerType(&f);
    else // If there is nothing to deduce just save the transparent type of the value
      result.transparentTypes[&f] = TransparentTypeFactory::create(&f);
  }
  // Deduce global values' types
  for (GlobalValue& globalValue : m.globals())
    if (globalValue.getValueType()->isPointerTy())
      deducePointerType(&globalValue);
    else // If there is nothing to deduce just save the transparent type of the value
      result.transparentTypes[&globalValue] = TransparentTypeFactory::create(&globalValue);

  // Continue deducing types until there is no change
  unsigned iterations = 1;
  bool deducedTypesChanged = true;
  while (deducedTypesChanged) {
    LLVM_DEBUG(log() << Logger::Blue << "[Deduction iteration " << iterations << "]\n"
                     << Logger::Reset);
    iterations++;
    deducedTypesChanged = false;
    for (const auto& [value, currentDeducedType] : deducedTypes)
      deducedTypesChanged |= deducePointerType(value, currentDeducedType);
  }
  LLVM_DEBUG(log().logln("[Deduction completed]", Logger::Blue));

  // Save deduced transparent types
  for (const auto& [value, deducedType] : deducedTypes)
    if (deducedType)
      result.transparentTypes[value] = deducedType;

  LLVM_DEBUG(logDeducedTypes());
  LLVM_DEBUG(log().logln("[End of TypeDeductionAnalysis]", Logger::Magenta));
  return result;
}

bool TypeDeductionAnalysis::deducePointerType(Value* value, std::shared_ptr<TransparentType> currentDeducedType) {
  bool deducedTypesChanged = false;
  if (!currentDeducedType)
    currentDeducedType = deducedTypes[value];
  if (currentDeducedType && !currentDeducedType->isOpaquePointer())
    return false;
  LLVM_DEBUG(log().log("[Deducing type of] ", Logger::Bold).logValueln(value));
  CandidateSet candidateTypes;
  if (auto* function = dyn_cast<Function>(value))
    candidateTypes = deduceFunctionPointerType(function);
  else if (auto* argument = dyn_cast<Argument>(value))
    candidateTypes = deduceArgumentPointerType(argument);
  else
    candidateTypes = deduceValuePointerType(value);
  std::shared_ptr<TransparentType> newPointerType = getBestCandidateType(candidateTypes);
  LLVM_DEBUG(logDeduction(newPointerType, candidateTypes));
  if (!newPointerType)
    return false;
  if (!currentDeducedType || newPointerType != currentDeducedType) {
    deducedTypes[value] = newPointerType;
    deducedTypesChanged = true;
  }
  return deducedTypesChanged;
}

TypeDeductionAnalysis::CandidateSet TypeDeductionAnalysis::deduceValuePointerType(Value* value) {
  if (auto* globalValue = dyn_cast<GlobalValue>(value))
    assert(globalValue->getValueType()->isPointerTy()
           && "Trying to deduce the pointer type of a global value that is not pointer");
  else
    assert(value->getType()->isPointerTy() && "Trying to deduce the pointer type of a value that is not a pointer");

  CandidateSet& candidateTypes = this->candidateTypes[value];

  // Deduce from value
  if (auto* allocaInst = dyn_cast<AllocaInst>(value))
    candidateTypes.insert(TransparentTypeFactory::create(allocaInst->getAllocatedType(), 1));
  else if (auto* loadInst = dyn_cast<LoadInst>(value)) {
    std::shared_ptr<TransparentType> type = getDeducedType(loadInst->getPointerOperand())->clone();
    if (type->getIndirections() > 0)
      type->incrementIndirections(-1);
    while (true) {
      auto structType = std::dynamic_ptr_cast<TransparentStructType>(type);
      if (!structType || structType->getIndirections() > 0)
        break;
      type = structType->getFieldType(0)->clone();
    }
    candidateTypes.insert(type);
  }
  else if (auto* gepInst = dyn_cast<GetElementPtrInst>(value)) {
    std::shared_ptr<TransparentType> pointerOperandType = getDeducedType(gepInst->getPointerOperand());
    std::shared_ptr<TransparentType> type = pointerOperandType->clone();
    bool first = true;
    for (Value* index : gepInst->indices()) {
      if (first) {
        if (!isa<ConstantInt>(index) || cast<ConstantInt>(index)->getZExtValue() != 0) {
          // We don't really know which type we are looking at when the first index is different from 0
          // At most we can get some information directly from the gep source type
          Type* sourceElementType = gepInst->getSourceElementType();
          type = !sourceElementType->isPointerTy() ? TransparentTypeFactory::create(sourceElementType) : nullptr;
          break;
        }
        first = false;
        if (type->getIndirections() > 0) {
          type->incrementIndirections(-1);
        }
        continue;
      }
      if (auto structType = std::dynamic_ptr_cast<TransparentStructType>(type)) {
        unsigned fieldIndex = cast<ConstantInt>(index)->getZExtValue();
        type = structType->getFieldType(fieldIndex);
      }
      else if (auto arrayType = std::dynamic_ptr_cast<TransparentArrayType>(type)) {
        // any array index selects the element type
        type = arrayType->getArrayElementType();
      }
      else {
        Logger& logger = log();
        logger.log("Gep instruction ", Logger::Red).logValueln(gepInst);
        logger.logln("is trying to extract from a value that is neither a struct or an array", Logger::Red);
        llvm_unreachable("Check this gep instruction to know what happened");
      }
    }
    if (type) {
      type->incrementIndirections(1);
      candidateTypes.insert(type);
    }
  }
  else if (auto* callInst = dyn_cast<CallBase>(value)) {
    if(callInst->getCalledFunction() != nullptr) {
      candidateTypes.insert(getDeducedType(callInst->getCalledFunction()));
    }
  }

  // Deduce from users
  for (User* user : value->users()) {
    if (auto* loadInst = dyn_cast<LoadInst>(user)) {
      std::shared_ptr<TransparentType> type = getDeducedType(loadInst)->clone();
      type->incrementIndirections(1);
      candidateTypes.insert(type);
    }
    else if (auto* storeInst = dyn_cast<StoreInst>(user)) {
      if (value == storeInst->getPointerOperand()) {
        std::shared_ptr<TransparentType> type = getDeducedType(storeInst->getValueOperand())->clone();
        type->incrementIndirections(1);
        candidateTypes.insert(type);
      }
      if (value == storeInst->getValueOperand()) {
        std::shared_ptr<TransparentType> type = getDeducedType(storeInst->getPointerOperand())->clone();
        if (type->getIndirections() > 0)
          type->incrementIndirections(-1);
        candidateTypes.insert(type);
      }
    }
    else if (auto* gepInst = dyn_cast<GetElementPtrInst>(user)) {
      if (value == gepInst->getPointerOperand()) {
        // Lambda to get the best candidate type between a type contained in the pointer operand of the gep
        // and the type of the gep itself
        auto getNewContainedType = [this, &gepInst](const auto& oldType) -> std::shared_ptr<TransparentType> {
          std::shared_ptr<TransparentType> type = getDeducedType(gepInst)->clone();
          if (type->getIndirections() > 0)
            type->incrementIndirections(-1);
          CandidateSet candidates = {oldType, type};
          return getBestCandidateType(candidates);
        };

        // Search for a coherent candide type, or create it if not present
        auto iter = std::ranges::find_if(candidateTypes, [gepInst](const std::shared_ptr<TransparentType>& type) {
          return type->getUnwrappedType() == gepInst->getSourceElementType() && type->getIndirections() == 1;
        });
        std::shared_ptr<TransparentType> type;
        if (iter != candidateTypes.end())
          type = (*iter)->clone();
        else
          type = TransparentTypeFactory::create(gepInst->getSourceElementType(), 1);
        std::shared_ptr<TransparentType> containedType = type;
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
          if (auto structType = std::dynamic_ptr_cast<TransparentStructType>(containedType)) {
            unsigned fieldIndex = cast<ConstantInt>(index)->getZExtValue();
            if (isLastIndex)
              structType->setFieldType(fieldIndex, getNewContainedType(structType->getFieldType(fieldIndex)));
            else
              containedType = structType->getFieldType(fieldIndex);
          }
          else if (auto arrayType = std::dynamic_ptr_cast<TransparentArrayType>(containedType)) {
            // any array index selects the element type
            if (isLastIndex)
              arrayType->setArrayElementType(getNewContainedType(arrayType->getArrayElementType()));
            else
              containedType = arrayType->getArrayElementType();
          }
          else {
            Logger& logger = log();
            logger.log("Gep instruction ", Logger::Red).logValueln(gepInst);
            logger.logln("is trying to extract from a value that is neither a struct or an array", Logger::Red);
            llvm_unreachable("Check this gep instruction to know what happened");
          }
        }
        candidateTypes.insert(type);
      }
    }
    else if (auto* callInst = dyn_cast<CallBase>(user)) {
      if(callInst->getCalledFunction() != nullptr && callInst->getCalledFunction()->getNumOperands() > 0 && callInst->getCalledFunction()->arg_size() > 0) {
        for (unsigned i = 0; i < callInst->getCalledFunction()->arg_size(); i++) {
          Value* arg = callInst->getCalledFunction()->getOperand(i);
          if (arg == value) {
            candidateTypes.insert(getDeducedType(callInst->getCalledFunction()->getArg(i)));
            break;
          }
        }
      }
    }
  }
  return candidateTypes;
}

TypeDeductionAnalysis::CandidateSet TypeDeductionAnalysis::deduceFunctionPointerType(Function* function) {
  assert(function->getReturnType()->isPointerTy()
         && "Trying to deduce the pointer type of a function that doesn't return a pointer");

  CandidateSet& candidateTypes = this->candidateTypes[function];
  for (BasicBlock& bb : *function) {
    Instruction* termInst = bb.getTerminator();
    if (auto* returnInst = dyn_cast<ReturnInst>(termInst))
      candidateTypes.insert(getDeducedType(returnInst->getReturnValue()));
  }
  return candidateTypes;
}

TypeDeductionAnalysis::CandidateSet TypeDeductionAnalysis::deduceArgumentPointerType(Argument* argument) {
  assert(argument->getType()->isPointerTy() && "Trying to deduce the pointer type of a argument that is not a pointer");

  CandidateSet& candidateTypes = this->candidateTypes[argument];

  unsigned argIndex = argument->getArgNo();
  Function* parentF = argument->getParent();
  for (User* functionUser : parentF->users())
    if (auto* callBase = dyn_cast<CallBase>(functionUser)) {
      if(argIndex < callBase->arg_size()) {
        Value* value = callBase->getArgOperand(argIndex);
        candidateTypes.insert(getDeducedType(value));
      }
    }
  candidateTypes.merge(deduceValuePointerType(argument));
  return candidateTypes;
}

std::shared_ptr<TransparentType> TypeDeductionAnalysis::getDeducedType(Value* value) const {
  std::shared_ptr<TransparentType> type;
  auto iter = deducedTypes.find(value);
  if (iter != deducedTypes.end() && iter->second)
    type = iter->second;
  else
    type = TransparentTypeFactory::create(value);
  return type;
}

std::shared_ptr<TransparentType> TypeDeductionAnalysis::getBestCandidateType(const CandidateSet& candidates) const {
  if (candidates.empty())
    return nullptr;

  std::shared_ptr<TransparentType> bestCandidate;
  for (const std::shared_ptr<TransparentType>& candidate : candidates) {
    if (!candidate)
      continue;
    if (!bestCandidate)
      bestCandidate = candidate;
    else if (isa<TransparentStructType>(candidate.get()) && isa<TransparentStructType>(bestCandidate.get())) {
      const auto& candidateStruct = cast<TransparentStructType>(*candidate.get());
      const auto& bestCandidateStruct = cast<TransparentStructType>(*bestCandidate.get());
      if(candidateStruct.getNumFieldTypes() == bestCandidateStruct.getNumFieldTypes()) {
        if(candidate->compareTransparency(*bestCandidate) == 1) {
          bestCandidate = candidate;
        }
      }
    } else if (candidate->compareTransparency(*bestCandidate) == 1) {
      // TODO implement strict aliasing rule and most information detain
      bestCandidate = candidate;
    }
  }
  return bestCandidate;
}

void TypeDeductionAnalysis::logDeduction(const std::shared_ptr<TransparentType>& bestCandidate,
                                   const CandidateSet& candidates) {
  Logger& logger = log();
  auto indenter = logger.getIndenter();
  indenter.increaseIndent();
  logger.log("current candidates: ").logln(candidates);
  logger.log("best candidate is ");
  if (bestCandidate)
    logger.logln(bestCandidate, Logger::Cyan);
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
