#pragma once

#include "Containers/InsertionOrderedMap.hpp"
#include "StructPaddingInfo.hpp"
#include "TransparentType.hpp"

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

  InsertionOrderedMap<llvm::Value*, std::unique_ptr<TransparentType>> deducedTypes;
  llvm::DenseMap<llvm::Value*, CandidateSet> candidateTypes;

  bool deducePointerType(llvm::Value* value, TransparentType* currentDeducedType = nullptr);
  CandidateSet& deduceValuePointerType(llvm::Value* value);
  CandidateSet& deduceFunctionPointerType(llvm::Function* function);
  CandidateSet& deduceArgumentPointerType(llvm::Argument* argument);
  const TransparentType* getOrCreateDeducedType(llvm::Value* value);
  std::unique_ptr<TransparentType> getBestCandidateType(const CandidateSet& candidates) const;

  void logDeduction(const TransparentType* bestCandidate, const CandidateSet& candidates);
  void logDeducedTypes();
};

} // namespace llvm
