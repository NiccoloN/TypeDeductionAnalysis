#include "Debug/Logger.hpp"
#include "TDAInfo/TypeDeductionAnalysisInfo.hpp"
#include "TransparentType.hpp"
#include "TypeDeductionAnalysis.hpp"

#include <llvm/ADT/Statistic.h>
#include <llvm/IR/InstIterator.h>
#include <llvm/IR/Instructions.h>

#define DEBUG_TYPE "tda"

STATISTIC(stat0ptrTypes, "Total pointer types to deduce");
STATISTIC(stat1transparentPtrTypes, "Transparent pointers deduced");
STATISTIC(stat2partiallyTransparentPtrTypes, "Partially transparent pointers deduced");
STATISTIC(stat3opaquePtrs, "Opaque pointers (not deduced)");

using namespace llvm;
using namespace tda;

AnalysisKey TypeDeductionAnalysis::Key;

TypeDeductionAnalysis::Result TypeDeductionAnalysis::run(Module& m, ModuleAnalysisManager&) {
  LLVM_DEBUG(log().logln("[TypeDeductionAnalysis]", Logger::Magenta));
  Result result;

  TypeDeductionAnalysisInfo::getInstance().initialize(m);

  // Build initial deduction queue
  for (Function& f : m) {
    if (f.isDeclaration()) {
      // Cannot deduce from a declaration: just create its transparent type (could be opaque)
      updateDeducedType(&f, TransparentTypeFactory::create(&f));
      continue;
    }
    for (Instruction& inst : instructions(f)) {
      deductionQueue.push_back(&inst);
      // Cannot deduce from a constant: just create its transparent type
      for (Use& operand : inst.operands())
        if (auto* constant = dyn_cast<Constant>(operand.get()))
          updateDeducedType(constant, TransparentTypeFactory::create(constant));
    }
    deductionQueue.push_back(&f);
  }
  for (GlobalValue& globalValue : m.globals())
    deductionQueue.push_back(&globalValue);

  // Continue deducing until a fix point is reached
  unsigned iterations = 0;
  while (changed) {
    LLVM_DEBUG(log() << Logger::Blue << "[Deduction iteration " << iterations << "]\n"
                     << Logger::Reset);
    iterations++;
    changed = false;
    for (Value* value : deductionQueue)
      deduceFromValue(value);
  }
  LLVM_DEBUG(log().logln("[Deduction completed]", Logger::Blue));
  LLVM_DEBUG(logDeducedTypes());

  stat0ptrTypes = 0;
  stat1transparentPtrTypes = 0;
  stat2partiallyTransparentPtrTypes = 0;
  stat3opaquePtrs = 0;
  // Save deduced transparent types and compute statistics
  for (auto& [value, deducedType] : deducedTypes) {
    // Statistics
    if (value->getType()->isPointerTy()) {
      stat0ptrTypes++;
      if (deducedType)
        if (!deducedType->isOpaque())
          stat1transparentPtrTypes++;
        else if (!deducedType->getUnwrappedLLVMType()->isPointerTy() || deducedType->getIndirections() != 0)
          stat2partiallyTransparentPtrTypes++;
        else
          stat3opaquePtrs++;
      else
        stat3opaquePtrs++;
    }
    // Move into result
    if (deducedType)
      result.transparentTypes[value] = std::move(deducedType);
  }

  LLVM_DEBUG(log().logln("[End of TypeDeductionAnalysis]", Logger::Magenta));
  return result;
}

const TransparentType* TypeDeductionAnalysis::updateDeducedType(Value* value,
                                                                std::unique_ptr<TransparentType> deducedType) {
  std::unique_ptr<TransparentType>& prevType = deducedTypes[value];
  if ((!prevType && deducedType) || (prevType && deducedType && *prevType != *deducedType)) {
    changed = true;
    LLVM_DEBUG(
      Logger& logger = log();
      logger.log("Changed type of: ").logValueln(value);
      auto indenter = logger.getIndenter();
      indenter.increaseIndent();
      logger << "from: ";
      if (prevType)
        logger.logln(prevType, Logger::Cyan);
      else
        logger << "null\n";
      logger.log("to:   ").logln(deducedType, Logger::Cyan););
  }
  return (deducedTypes[value] = std::move(deducedType)).get();
}

const TransparentType* TypeDeductionAnalysis::getOrCreateDeducedType(Value* value) {
  auto iter = deducedTypes.find(value);
  if (iter != deducedTypes.end() && iter->second)
    return iter->second.get();
  LLVM_DEBUG(log().logln("Creating initial type:", Logger::Cyan););
  const TransparentType* type = updateDeducedType(value, TransparentTypeFactory::create(value));
  return type;
}

void TypeDeductionAnalysis::logDeducedTypes() {
  Logger& logger = log();
  logger.logln("[Results]", Logger::Green);
  for (const auto& [value, deducedType] : deducedTypes) {
    logger.log("[Value] ", Logger::Bold).logValueln(value);
    auto indenter = logger.getIndenter();
    indenter.increaseIndent();
    if (deducedType) {
      logger.log("deduced type: ");
      auto color = deducedType->isOpaque() ? Logger::Yellow : Logger::Green;
      logger.logln(deducedType, color);
    }
    else
      logger.logln("type not deduced", Logger::Yellow);
  }
}
