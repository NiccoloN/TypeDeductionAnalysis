#pragma once

#include <llvm/ADT/SmallPtrSet.h>
#include <llvm/IR/Module.h>
#include <llvm/IR/PassManager.h>
#include <llvm/IR/Value.h>

namespace tda {

class TransparentType;
class TypeDispatcher;

using TypeAliasSet = llvm::SmallPtrSet<const TransparentType*, 4>;
struct Result {
  llvm::Module* module;
  llvm::DenseMap<llvm::Value*, TypeAliasSet> transparentTypes;

  Result() = delete;
  Result(llvm::Module* llvmModule, llvm::DenseMap<llvm::Value*, TypeAliasSet>&& types);
  Result(const Result&) = delete;
  Result(Result&& other);
  Result& operator=(const Result&) = delete;
  Result& operator=(Result&& other);
  ~Result();
};

class TypeDeductionAnalysis : public llvm::AnalysisInfoMixin<TypeDeductionAnalysis> {
  friend AnalysisInfoMixin;

private:
  static llvm::AnalysisKey Key;

public:
  using Result = tda::Result;

  Result run(llvm::Module& llvmModule, llvm::ModuleAnalysisManager&);
};

} // namespace tda
