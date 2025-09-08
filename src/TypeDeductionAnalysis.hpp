#pragma once

#include "Containers/InsertionOrderedMap.hpp"
#include "TransparentType.hpp"

#include <llvm/IR/Instructions.h>
#include <llvm/IR/PassManager.h>

#include <unordered_set>

namespace tda {

class TypeDeductionAnalysis : public llvm::AnalysisInfoMixin<TypeDeductionAnalysis> {
  friend AnalysisInfoMixin;
  static llvm::AnalysisKey Key;

public:
  struct Result {
    llvm::DenseMap<llvm::Value*, std::unique_ptr<TransparentType>> transparentTypes;
  };

  Result run(llvm::Module& m, llvm::ModuleAnalysisManager&);

private:
  using CandidateSet = std::unordered_set<std::unique_ptr<TransparentType>>;

  std::list<llvm::Value*> deductionQueue;
  std::unordered_map<llvm::Value*, std::unique_ptr<TransparentType>> deducedTypes;
  llvm::SmallPtrSet<llvm::Instruction*, 32> tbaaUsedForInstruction;
  bool changed = true;

  const TransparentType* updateDeducedType(llvm::Value* value, std::unique_ptr<TransparentType> deducedType);
  const TransparentType* getOrCreateDeducedType(llvm::Value* value);

  void deduceFromValue(llvm::Value* value);

  void deduceFromGlobalVariable(llvm::GlobalVariable* globalVar);
  void deduceFromAlloca(llvm::AllocaInst* alloca);
  void deduceFromLoadStore(llvm::Instruction* inst);
  void deduceFromGep(llvm::GetElementPtrInst* gep);

  void deduceFromCall(llvm::CallBase* call);
  void deduceFromFunction(llvm::Function* function);

  void logDeducedTypes();
};

} // namespace tda
