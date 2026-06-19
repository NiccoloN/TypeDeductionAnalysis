#include "AnalysisWorker.hpp"
#include "TransparentType.hpp"
#include "TypeDeductionAnalysis.hpp"
#include "TypeDispatcher.hpp"

#include <llvm/ADT/DenseMap.h>
#include <llvm/ADT/STLExtras.h>
#include <llvm/ADT/SmallPtrSet.h>
#include <llvm/ADT/iterator_range.h>
#include <llvm/IR/InstrTypes.h>
#include <llvm/IR/Instructions.h>
#include <llvm/IR/IntrinsicInst.h>
#include <llvm/IR/Module.h>
#include <llvm/IR/PassManager.h>
#include <llvm/IR/Use.h>
#include <llvm/IR/Value.h>
#include <llvm/Support/Casting.h>

#include <optional>

#define DEBUG_TYPE "tda"

namespace tda {

static bool isMetadata(const llvm::Value* value) {
  return value && (value->getType()->isMetadataTy() || isa<llvm::MetadataAsValue>(value));
}

static bool isToSkip(const llvm::Value* value) {
  if (isMetadata(value))
    return true;

  const auto* inst = llvm::dyn_cast_or_null<llvm::Instruction>(value);
  if (!inst)
    return false;

  if (isa<llvm::DbgInfoIntrinsic>(inst))
    return true;

  if (const auto* call = llvm::dyn_cast_or_null<llvm::CallBase>(inst)) {
    if (const auto* calledFunc = call->getCalledFunction()) {
      if (calledFunc->isIntrinsic()) {
        switch (calledFunc->getIntrinsicID()) {
        case llvm::Intrinsic::dbg_declare:
        case llvm::Intrinsic::dbg_value:
        case llvm::Intrinsic::dbg_label:
        case llvm::Intrinsic::var_annotation:
        case llvm::Intrinsic::ptr_annotation:
        case llvm::Intrinsic::lifetime_start:
        case llvm::Intrinsic::lifetime_end:   return true;
        default:                              break;
        }
      }
    }
  }

  return false;
}

static bool isSupportedIntrinsic(const llvm::Intrinsic::ID ID) {
  switch (ID) {
  case llvm::Intrinsic::memcpy:
  case llvm::Intrinsic::memmove:
  case llvm::Intrinsic::memset:  return true;
  default:                       return false;
  }
}

void AnalysisWorker::deduceFromValue(llvm::Value* value) {
  if (isToSkip(value))
    return;

  currDeductionValue = value;

  if (auto* globalVar = llvm::dyn_cast_or_null<llvm::GlobalVariable>(value))
    deduceFromGlobalVariable(globalVar);
  else if (auto* alloca = llvm::dyn_cast_or_null<llvm::AllocaInst>(value))
    deduceFromAlloca(alloca);
  else if (auto* load = llvm::dyn_cast_or_null<llvm::LoadInst>(value))
    deduceFromLoadStore(load);
  else if (auto* store = llvm::dyn_cast_or_null<llvm::StoreInst>(value))
    deduceFromLoadStore(store);
  else if (auto* gep = llvm::dyn_cast_or_null<llvm::GetElementPtrInst>(value))
    deduceFromGep(gep);
  else if (auto* call = llvm::dyn_cast_or_null<llvm::CallBase>(value))
    deduceFromCall(call);
  else if (auto* func = llvm::dyn_cast_or_null<llvm::Function>(value))
    deduceFromFunction(func);
  else if (deducedTypes[value].empty())
    updateDeducedTypes(value, TransparentType::get(value->getType()));

  currDeductionValue = nullptr;
}

void AnalysisWorker::deduceFromGlobalVariable(llvm::GlobalVariable* globalVar) {
  llvm::LLVMContext* llvmContext = &globalVar->getContext();

  const TransparentType* valueType = TransparentType::get(globalVar->getValueType());
  const TypeAliasSet globalVarTypes = getOrCreateDeducedTypes(globalVar);

  TypeAliasSet initializerTypes;
  llvm::Value* initializer = nullptr;
  if (globalVar->hasInitializer()) {
    initializer = globalVar->getInitializer();
    initializerTypes = getOrCreateDeducedTypes(initializer);
  }

  auto deduce = [&](const TransparentType* globalVarType, const TransparentType* initializerType) {
    if (initializer && !isa<llvm::Function>(initializer)) {
      updateDeducedTypes(initializer, valueType);

      const TransparentType* globalVarPointedType = globalVarType->getPointedType();
      if (initializerType->isStructurallyEquivalent(globalVarPointedType))
        updateDeducedTypes(initializer, globalVarPointedType);

      updateDeducedTypes(globalVar, TransparentPointerType::get(llvmContext, valueType));
      updateDeducedTypes(globalVar, TransparentPointerType::get(llvmContext, initializerType));
    }
    else
      updateDeducedTypes(globalVar, TransparentPointerType::get(llvmContext, valueType));
  };

  for (const auto* globalVarType : globalVarTypes) {
    if (!initializerTypes.empty())
      for (const auto* initializerType : initializerTypes)
        deduce(globalVarType, initializerType);
    else
      deduce(globalVarType, nullptr);
  }
}

void AnalysisWorker::deduceFromAlloca(llvm::AllocaInst* alloca) {
  llvm::LLVMContext* llvmContext = &alloca->getContext();

  const TransparentType* allocatedType = TransparentType::get(alloca->getAllocatedType());

  updateDeducedTypes(alloca, TransparentPointerType::get(llvmContext, allocatedType));
}

void AnalysisWorker::deduceFromLoadStore(llvm::Instruction* inst) {
  assert(isa<llvm::LoadInst>(inst) || isa<llvm::StoreInst>(inst));

  llvm::LLVMContext* llvmContext = &inst->getContext();

  llvm::Value* valueOperand = nullptr;
  llvm::Value* ptrOperand = nullptr;

  if (auto* load = llvm::dyn_cast_or_null<llvm::LoadInst>(inst)) {
    valueOperand = load;
    ptrOperand = load->getPointerOperand();
  }
  else if (auto* store = llvm::dyn_cast_or_null<llvm::StoreInst>(inst)) {
    valueOperand = store->getValueOperand();
    ptrOperand = store->getPointerOperand();
  }

  const TypeAliasSet valueOperandTypes = getOrCreateDeducedTypes(valueOperand);
  const TypeAliasSet ptrOperandTypes = getOrCreateDeducedTypes(ptrOperand);

  bool hasUnion = llvm::any_of(ptrOperandTypes, [](const TransparentType* type) {
    const TransparentType* pointedType = type->getPointedType();
    return pointedType ? pointedType->isUnion() : false;
  });
  if (hasUnion || isa<llvm::Function>(ptrOperand))
    return;

  auto deduce = [&](const TransparentType* valueOperandType, const TransparentType* ptrOperandType) {
    // Deduce from tbaa metadata, if present (only once)
    if (!tbaaUsedForInstruction.contains(inst)) {
      const auto [ptrOperandTypeTbaa, valueOperandTypeTbaa] = TransparentType::get(inst);
      updateDeducedTypes(valueOperand, valueOperandTypeTbaa);
      updateDeducedTypes(ptrOperand, ptrOperandTypeTbaa);
      tbaaUsedForInstruction.insert(inst);
    }

    const TransparentType* indexedType = ptrOperandType->getOrSetIndexedType(valueOperandType);

    const TransparentType* mergedPtrOperandType = nullptr;
    if (indexedType)
      mergedPtrOperandType = ptrOperandType->getOrSetIndexedType(valueOperandType, std::nullopt, valueOperandType);

    updateDeducedTypes(valueOperand, indexedType);
    updateDeducedTypes(ptrOperand,
                       mergedPtrOperandType ? mergedPtrOperandType
                                            : TransparentPointerType::get(llvmContext, valueOperandType));
  };

  for (const auto* valueOperandType : valueOperandTypes)
    for (const auto* ptrOperandType : ptrOperandTypes)
      deduce(valueOperandType, ptrOperandType);
}

void AnalysisWorker::deduceFromGep(llvm::GetElementPtrInst* gep) {
  llvm::LLVMContext* llvmContext = &gep->getContext();

  llvm::Value* ptrOperand = gep->getPointerOperand();
  const TypeAliasSet gepTypes = getOrCreateDeducedTypes(gep);
  const TypeAliasSet ptrOperandTypes = getOrCreateDeducedTypes(ptrOperand);

  bool hasUnion = llvm::any_of(ptrOperandTypes, [](const TransparentType* type) {
    const TransparentType* pointedType = type->getPointedType();
    return pointedType ? pointedType->isUnion() : false;
  });
  if (hasUnion)
    return;

  const TransparentType* srcElemType = TransparentType::get(gep->getSourceElementType());
  if (srcElemType->isUnion()) {
    updateDeducedTypes(ptrOperand, srcElemType);
    return;
  }

  const TransparentType* srcElemPtrType = TransparentPointerType::get(llvmContext, srcElemType);
  const TransparentType* indexedFromSrcElType = srcElemPtrType->getOrSetIndexedType(srcElemType, gep->indices());
  if (indexedFromSrcElType)
    updateDeducedTypes(gep, TransparentPointerType::get(llvmContext, indexedFromSrcElType));

  auto deduce = [&](const TransparentType* gepType, const TransparentType* ptrOperandType) {
    const TransparentType* indexedFromPtrOpType = ptrOperandType->getOrSetIndexedType(srcElemType, gep->indices());
    if (indexedFromPtrOpType)
      updateDeducedTypes(gep, TransparentPointerType::get(llvmContext, indexedFromPtrOpType));

    const TransparentType* ptrOpTypeMergedWithGep =
      ptrOperandType->getOrSetIndexedType(srcElemType, gep->indices(), gepType->getPointedType());
    if (ptrOpTypeMergedWithGep)
      updateDeducedTypes(ptrOperand, ptrOpTypeMergedWithGep);

    updateDeducedTypes(ptrOperand, srcElemPtrType);
  };

  for (const auto* gepType : gepTypes)
    for (const auto* ptrOperandType : ptrOperandTypes)
      deduce(gepType, ptrOperandType);
}

void AnalysisWorker::deduceFromCall(llvm::CallBase* call) {
  llvm::Function* calledFun = call->getCalledFunction();
  if (!calledFun)
    return;

  if (calledFun->isIntrinsic() && isSupportedIntrinsic(calledFun->getIntrinsicID())) {
    deduceFromSupportedIntrinsicCall(call);
    return;
  }

  if (calledFun->isDeclaration())
    return;

  mergeTypeAliasSets(call, calledFun);

  for (auto&& [callArg, funArg] : zip(call->args(), calledFun->args())) {
    if (isa<llvm::Function>(callArg))
      // FIXME: the deduced type of functions is their return type (different LLVM-14 type), causing incompatible merges
      continue;
    mergeTypeAliasSets(callArg, &funArg);
  }
}

void AnalysisWorker::deduceFromFunction(llvm::Function* func) {
  for (const llvm::BasicBlock& bb : *func) {
    const llvm::Instruction* termInst = bb.getTerminator();

    if (const auto* returnInst = llvm::dyn_cast_or_null<llvm::ReturnInst>(termInst))
      if (llvm::Value* retValue = returnInst->getReturnValue())
        mergeTypeAliasSets(func, retValue);
  }
}

void AnalysisWorker::deduceFromSupportedIntrinsicCall(llvm::CallBase* call) {
  const llvm::Function* intrinsicFun = call->getCalledFunction();

  assert(intrinsicFun && intrinsicFun->isIntrinsic());

  const llvm::Intrinsic::ID id = intrinsicFun->getIntrinsicID();
  if (id == llvm::Intrinsic::memcpy || id == llvm::Intrinsic::memmove)
    mergeTypeAliasSets(call->getArgOperand(0), call->getArgOperand(1));
}

void AnalysisWorker::mergeTypeAliasSets(llvm::Value* value1, llvm::Value* value2) {
  const TypeAliasSet types1 = getOrCreateDeducedTypes(value1);
  const TypeAliasSet types2 = getOrCreateDeducedTypes(value2);

  auto mergeAliases = [&](const TransparentType* type1, const TransparentType* type2) {
    updateDeducedTypes(value1, type2);
    updateDeducedTypes(value2, type1);
  };

  for (const auto* type1 : types1)
    for (const auto* type2 : types2)
      mergeAliases(type1, type2);
}

} // namespace tda
