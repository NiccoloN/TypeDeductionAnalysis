#pragma once

#include <llvm/ADT/DenseMap.h>
#include <llvm/ADT/SmallPtrSet.h>
#include <llvm/IR/InstrTypes.h>
#include <llvm/IR/Instructions.h>
#include <llvm/IR/Module.h>
#include <llvm/IR/PassManager.h>
#include <llvm/IR/Value.h>

#include <vector>

namespace tda {

class Logger;
class TypeDispatcher;
class TransparentType;

using TypeAliasSet = llvm::SmallPtrSet<const TransparentType*, 4>;

class AnalysisWorker {

public:
  explicit AnalysisWorker(llvm::Module& module, Logger& logger);
  AnalysisWorker(const AnalysisWorker&) = delete;
  AnalysisWorker(AnalysisWorker&&) = delete;
  AnalysisWorker& operator=(const AnalysisWorker&) = delete;
  AnalysisWorker& operator=(AnalysisWorker&&) = delete;
  ~AnalysisWorker();

  llvm::DenseMap<llvm::Value*, TypeAliasSet> run();

private:
  llvm::Module& module;
  Logger& logger;
  std::vector<llvm::Value*> deductionQueue;
  llvm::DenseMap<llvm::Value*, TypeAliasSet> deducedTypes;
  llvm::SmallPtrSet<const llvm::Instruction*, 32> tbaaUsedForInstruction;
  llvm::Value* currDeductionValue = nullptr;
  bool changed = true;

  TypeAliasSet& updateDeducedTypes(llvm::Value* value, const TransparentType* deducedType);
  TypeAliasSet& getOrCreateDeducedTypes(llvm::Value* value);

  void deduceFromValue(llvm::Value* value);
  void deduceFromGlobalVariable(llvm::GlobalVariable* globalVar);
  void deduceFromAlloca(llvm::AllocaInst* alloca);
  void deduceFromLoadStore(llvm::Instruction* inst);
  void deduceFromGep(llvm::GetElementPtrInst* gep);
  void deduceFromCall(llvm::CallBase* call);
  void deduceFromFunction(llvm::Function* func);
  void deduceFromSupportedIntrinsicCall(llvm::CallBase* call);

  void mergeTypeAliasSets(llvm::Value* value1, llvm::Value* value2);

  void logDeducedTypes();
};

} // namespace tda
