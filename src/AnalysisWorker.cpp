#include "AnalysisWorker.hpp"
#include "Debug/Logger.hpp"
#include "TransparentType.hpp"
#include "TypeDeductionAnalysis.hpp"
#include "TypeDispatcher.hpp"

#include <llvm/ADT/Statistic.h>
#include <llvm/ADT/STLExtras.h>
#include <llvm/IR/InstIterator.h>
#include <llvm/IR/Instructions.h>
#include <llvm/IR/Use.h>
#include <llvm/IR/Value.h>
#include <llvm/Support/Casting.h>

#include <utility>

#define DEBUG_TYPE "tda"

STATISTIC(stat0ptrTypes, "Total pointer types to deduce");
STATISTIC(stat1ptrAliases, "Total pointer alias types deduced");
STATISTIC(stat2multipleAliases, "Pointers with multiple aliases");
STATISTIC(stat3transparentAliases, "Transparent pointer aliases");
STATISTIC(stat4partiallyTransparentAliases, "Partially transparent pointer aliases");
STATISTIC(stat5opaqueAliases, "Opaque aliases (not deduced)");

namespace tda {

AnalysisWorker::AnalysisWorker(llvm::Module& module, Logger& logger) : module(module), logger(logger) {}

AnalysisWorker::~AnalysisWorker() = default;

llvm::DenseMap<llvm::Value*, TypeAliasSet> AnalysisWorker::run() {
  LLVM_DEBUG(logger.logln("[TypeDeductionAnalysis]", Logger::Magenta));

  // Estimate Deduction Queue size
  size_t queueSize = 0;

  for (const llvm::Function& func : module) {
    if (!func.isDeclaration()) {
        queueSize += func.getInstructionCount();
    }
  }
  queueSize += module.global_size();

  deductionQueue.reserve(queueSize);

  // Build initial Deduction Queue
  for (llvm::Function& func : module) {
    if (func.isDeclaration()) {
      // Cannot deduce from a declaration: just create its transparent type (could be opaque)
      updateDeducedTypes(&func, TransparentType::get(&func));
      continue;
    }

    for (llvm::Instruction& inst : instructions(func)) {
      deductionQueue.push_back(&inst);

      // Cannot deduce from a constant: just create its Transparent Type
      for (const llvm::Use& operand : inst.operands())
        if (auto* constant = llvm::dyn_cast_or_null<llvm::Constant>(operand.get()))
          updateDeducedTypes(constant, TransparentType::get(constant));
    }

    deductionQueue.push_back(&func);
  }
  for (llvm::GlobalValue& globalValue : module.globals())
    deductionQueue.push_back(&globalValue);

  // Continue deducing until a Fixed Point is reached
  unsigned iterations = 0;
  while (changed) {
    LLVM_DEBUG(logger << Logger::Blue << "[Deduction iteration " << iterations << "]\n"
                      << Logger::Reset);

    iterations++;
    changed = false;

    for (llvm::Value* value : deductionQueue)
      deduceFromValue(value);
  }

  LLVM_DEBUG(
    logger.logln("[Deduction completed]", Logger::Blue);
    logDeducedTypes();

    logger.logln("[Opaque pointers and pointers with multiple alias types]", Logger::Yellow);
    bool any = false;
    bool printedValue = false;
    auto logAliasSet = [&](const llvm::Value* value, const TypeAliasSet& typeAliasSet) {
      logger.log("[Value] ", Logger::Bold).logValueln(value);
      auto indenter = logger.getIndenter();
      indenter.increaseIndent();
      logger.logln(typeAliasSet, Logger::Yellow);

      printedValue = true;
      any = true;
    };

    for (const auto& [value, typeAliasSet] : deducedTypes) {
        bool hasOpaque = llvm::any_of(typeAliasSet, [](const auto* type) { 
          return type->containsOpaquePtr(); 
        });
    
        if (hasOpaque || typeAliasSet.size() > 1) {
            logAliasSet(value, typeAliasSet);
        }
    }

    if (!any)
      logger.logln("None", Logger::Green);
  );

  // Save deduced Transparent Types and compute Statistics
  stat0ptrTypes = 0;
  stat1ptrAliases = 0;
  stat2multipleAliases = 0;
  stat3transparentAliases = 0;
  stat4partiallyTransparentAliases = 0;
  stat5opaqueAliases = 0;

  for (const auto& [value, typeAliasSet] : deducedTypes) {
    if (value->getType()->isPointerTy()) {
      stat0ptrTypes++;

      if (!typeAliasSet.empty()) {
        for (const auto& type : typeAliasSet) {
          stat1ptrAliases++;

          if (!type->containsOpaquePtr())
            stat3transparentAliases++;
          else if (type->isPointerTT() && !type->getPointedType())
            stat5opaqueAliases++;
          else
            stat4partiallyTransparentAliases++;
        }

        if (typeAliasSet.size() > 1)
          stat2multipleAliases++;
      }
      else
        stat5opaqueAliases++;
    }
  }

  LLVM_DEBUG(logger.logln("[End of TypeDeductionAnalysis]", Logger::Magenta));
  return std::move(deducedTypes);
}

TypeAliasSet& AnalysisWorker::updateDeducedTypes(llvm::Value* value, const TransparentType* deducedType) {
  TypeAliasSet& typeAliasSet = deducedTypes[value];
  if (!deducedType)
    return typeAliasSet;

  auto indenter = logger.getIndenter();
  auto logDeductionValue = [&] {
    if (!currDeductionValue)
      return;

    LLVM_DEBUG(logger.log("[Deducing from] ", Logger::Bold).logValueln(currDeductionValue));
    indenter.increaseIndent();
  };

  bool typeSetChanged = false;

  const auto iter = std::find_if(typeAliasSet.begin(), typeAliasSet.end(), 
      [deducedType](const auto* type) { 
          return type->isCompatibleWith(deducedType); 
      });

  if (iter != typeAliasSet.end()) {
    const TransparentType* mergedType = (*iter)->mergeWith(deducedType);

    if (mergedType != *iter) {
      LLVM_DEBUG(
        logDeductionValue();
        logger.log("Changed (merge) type alias set of: ").logValueln(value);
        indenter.increaseIndent();
        logger.log("from: ").logln(typeAliasSet, Logger::Cyan););

      typeAliasSet.erase(*iter);
      typeAliasSet.insert(mergedType);
      typeSetChanged = true;
    }
  }
  else {
    assert((typeAliasSet.empty() && "First Alias in Alias Set!!") ||
           ((*typeAliasSet.begin())->isPointerTT() && deducedType->isPointerTT() && "All Aliases in Alias Set are pointers!!") || 
           ((*typeAliasSet.begin())->isStructurallyEquivalent(deducedType) && "All Aliases in Alias Set are structurally equivalent!!"));

    LLVM_DEBUG(
      logDeductionValue();
      logger.log("Changed (insert) type alias set of: ").logValueln(value);
      indenter.increaseIndent();
      logger.log("from: ").logln(typeAliasSet, Logger::Cyan););

    typeAliasSet.insert(deducedType);
    typeSetChanged = true;
  }

  if (typeSetChanged) {
    changed = true;
    LLVM_DEBUG(logger.log("to:   ").logln(typeAliasSet, Logger::Cyan););
  }

  return typeAliasSet;
}

TypeAliasSet& AnalysisWorker::getOrCreateDeducedTypes(llvm::Value* value) {
  const auto iter = deducedTypes.find(value);
  if (iter != deducedTypes.end() && !iter->second.empty())
    return iter->second;

  LLVM_DEBUG(logger.logln("Creating initial type:", Logger::Cyan););
  TypeAliasSet& typeAliasSet = updateDeducedTypes(value, TransparentType::get(value));
  return typeAliasSet;
}

void AnalysisWorker::logDeducedTypes() {
  logger.logln("[Results]", Logger::Green);

  for (const auto& [value, typeAliasSet] : deducedTypes) {
    logger.log("[Value] ", Logger::Bold).logValueln(value);
    auto indenter = logger.getIndenter();
    indenter.increaseIndent();

    if (!typeAliasSet.empty()) {
      logger.log("deduced alias types: ");
      logger.log("{ ", Logger::Bold);

      bool first = true;
      for (const auto& type : typeAliasSet) {
        auto color = type->containsOpaquePtr() ? Logger::Yellow : Logger::Green;

        if (!first)
          logger.log(", ", Logger::Bold);
        else
          first = false;

        logger.log(type, color);
      }

      logger.logln(" }", Logger::Bold);
    }
    else
      logger.logln("No types deduced", Logger::Yellow);
  }
}

} // namespace tda
