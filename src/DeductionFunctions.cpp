#include "Debug/Logger.hpp"
#include "TDAInfo/TBAAParser.hpp"
#include "TypeDeductionAnalysis.hpp"

#include <llvm/IR/Constants.h>
#include <llvm/IR/IntrinsicInst.h>

#define DEBUG_TYPE "tda"

using namespace llvm;
using namespace tda;

static bool isMetadata(const Value* value) {
  return value && (value->getType()->isMetadataTy() || isa<MetadataAsValue>(value));
}

static bool isToSkip(const Value* value) {
  if (isMetadata(value))
    return true;

  const Instruction* inst = dyn_cast<Instruction>(value);
  if (!inst)
    return false;

  if (isa<DbgInfoIntrinsic>(inst))
    return true;
  if (auto* call = dyn_cast<CallBase>(inst)) {
    if (const Function* calledFun = call->getCalledFunction()) {
      if (calledFun->isIntrinsic()) {
        switch (calledFun->getIntrinsicID()) {
        case Intrinsic::dbg_declare:
        case Intrinsic::dbg_value:
        case Intrinsic::dbg_label:
        case Intrinsic::var_annotation:
        case Intrinsic::ptr_annotation:
        case Intrinsic::lifetime_start:
        case Intrinsic::lifetime_end:   return true;
        default:                        break;
        }
      }
    }
  }
  return false;
}

void TypeDeductionAnalysis::deduceFromValue(Value* value) {
  if (isToSkip(value))
    return;

  Logger& logger = log();
  LLVM_DEBUG(logger.log("[Deducing from] ", Logger::Bold).logValueln(value));
  auto indenter = logger.getIndenter();
  indenter.increaseIndent();

  if (auto* global = dyn_cast<GlobalVariable>(value))
    deduceFromGlobalVariable(global);
  else if (auto* alloca = dyn_cast<AllocaInst>(value))
    deduceFromAlloca(alloca);
  else if (auto* load = dyn_cast<LoadInst>(value))
    deduceFromLoadStore(load);
  else if (auto* store = dyn_cast<StoreInst>(value))
    deduceFromLoadStore(store);
  else if (auto* gep = dyn_cast<GetElementPtrInst>(value))
    deduceFromGep(gep);
  else if (auto* call = dyn_cast<CallBase>(value))
    deduceFromCall(call);
  else if (auto* fun = dyn_cast<Function>(value))
    deduceFromFunction(fun);
  else if (!deducedTypes[value])
    updateDeducedType(value, TransparentTypeFactory::create(value->getType()));
}

void TypeDeductionAnalysis::deduceFromGlobalVariable(GlobalVariable* globalVar) {
  std::unique_ptr<TransparentType> valueType = TransparentTypeFactory::create(globalVar->getValueType(), 0);
  const TransparentType* globalVarType = getOrCreateDeducedType(globalVar);
  const TransparentType* initializerType = nullptr;

  Value* initializer = nullptr;
  if (globalVar->hasInitializer()) {
    initializer = globalVar->getInitializer();
    initializerType = getOrCreateDeducedType(initializer);
  }

  if (initializer) {
    std::unique_ptr<TransparentType> newInitializerType =
      initializerType->mergeWith(valueType.get())->mergeWith(globalVarType->getPointedType().get());
    std::unique_ptr<TransparentType> newGlobalVarType = globalVarType->mergeWith(valueType->getPointerToType().get())
                                                          ->mergeWith(initializerType->getPointerToType().get());

    updateDeducedType(initializer, std::move(newInitializerType));
    updateDeducedType(globalVar, std::move(newGlobalVarType));
  }
  else
    updateDeducedType(globalVar, globalVarType->mergeWith(valueType->getPointerToType().get()));
}

void TypeDeductionAnalysis::deduceFromAlloca(AllocaInst* alloca) {
  std::unique_ptr<TransparentType> allocatedType = TransparentTypeFactory::create(alloca->getAllocatedType(), 1);
  const TransparentType* allocaType = getOrCreateDeducedType(alloca);
  updateDeducedType(alloca, allocaType->mergeWith(allocatedType.get()));
}

void TypeDeductionAnalysis::deduceFromLoadStore(Instruction* inst) {
  assert(isa<LoadInst>(inst) || isa<StoreInst>(inst));
  Value* valueOperand = nullptr;
  Value* ptrOperand = nullptr;
  if (auto* load = dyn_cast<LoadInst>(inst)) {
    valueOperand = load;
    ptrOperand = load->getPointerOperand();
  }
  else if (auto* store = dyn_cast<StoreInst>(inst)) {
    valueOperand = store->getValueOperand();
    ptrOperand = store->getPointerOperand();
  }

  const TransparentType* valueOperandType = getOrCreateDeducedType(valueOperand);
  const TransparentType* ptrOperandType = getOrCreateDeducedType(ptrOperand);

  // Initialize deduction from tbaa metadata, if present
  if (!tbaaUsedForInstruction.contains(inst)) {
    auto [ptrOperandTypeTbaa, valueOperandTypeTbaa] = TBAAParser::getLoadStoreTypesFromTbaa(inst);
    if (valueOperandTypeTbaa)
      valueOperandType = updateDeducedType(valueOperand, std::move(valueOperandTypeTbaa));
    if (ptrOperandTypeTbaa)
      ptrOperandType = updateDeducedType(ptrOperand, std::move(ptrOperandTypeTbaa));
    tbaaUsedForInstruction.insert(inst);
  }

  std::unique_ptr<TransparentType> newValueOperandType = nullptr;
  std::unique_ptr<TransparentType> newPtrOperandType = nullptr;
  if (valueOperandType->isScalarTT() && ptrOperandType->isStructTT()) {
    std::unique_ptr<TransparentType> mergedPtrOperandType = ptrOperandType->clone();
    TransparentType* currType = mergedPtrOperandType.get();
    auto* currStructType = cast<TransparentStructType>(currType);
    while (currType->isStructTT()) {
      currStructType = cast<TransparentStructType>(currType);
      currType = currStructType->getFieldType(0);
    }
    newValueOperandType = valueOperandType->mergeWith(currType);
    currStructType->setFieldType(0, valueOperandType->clone());
    newPtrOperandType = ptrOperandType->mergeWith(mergedPtrOperandType.get());
  }
  else {
    newValueOperandType = valueOperandType->mergeWith(ptrOperandType->getPointedType().get());
    newPtrOperandType = ptrOperandType->mergeWith(valueOperandType->getPointerToType().get());
  }

  updateDeducedType(valueOperand, std::move(newValueOperandType));
  updateDeducedType(ptrOperand, std::move(newPtrOperandType));
}

void TypeDeductionAnalysis::deduceFromGep(GetElementPtrInst* gep) {
  Type* srcElLLVMType = gep->getSourceElementType();
  Value* ptrOperand = gep->getPointerOperand();
  const TransparentType* gepType = getOrCreateDeducedType(gep);
  const TransparentType* ptrOperandType = getOrCreateDeducedType(ptrOperand);

  std::unique_ptr<TransparentType> srcElType = TransparentTypeFactory::create(srcElLLVMType);
  std::unique_ptr<TransparentType> srcElPtrType = srcElType->getPointerToType();
  const TransparentType* indexedFromSrcElType = srcElPtrType->getIndexedType(srcElLLVMType, gep->indices());
  const TransparentType* indexedFromPtrOperandType = ptrOperandType->getIndexedType(srcElLLVMType, gep->indices());

  std::unique_ptr<TransparentType> mergedPtrOperandType = ptrOperandType->clone();
  mergedPtrOperandType->setIndexedType(indexedFromPtrOperandType, srcElLLVMType, gep->indices());

  std::unique_ptr<TransparentType> newGepType = gepType->clone();
  if (indexedFromSrcElType)
    newGepType = newGepType->mergeWith(indexedFromSrcElType->getPointerToType().get());
  if (indexedFromPtrOperandType)
    newGepType = newGepType->mergeWith(indexedFromPtrOperandType->getPointerToType().get());

  std::unique_ptr<TransparentType> newPtrOperandType = ptrOperandType->mergeWith(mergedPtrOperandType.get());

  updateDeducedType(gep, std::move(newGepType));
  updateDeducedType(ptrOperand, std::move(newPtrOperandType));
}

void TypeDeductionAnalysis::deduceFromCall(CallBase* call) {
  Function* calledFun = call->getCalledFunction();
  if (!calledFun)
    return;
  const TransparentType* callType = getOrCreateDeducedType(call);
  const TransparentType* funType = getOrCreateDeducedType(calledFun);

  std::unique_ptr<TransparentType> newCallType = callType->mergeWith(funType);
  std::unique_ptr<TransparentType> newFunType = funType->mergeWith(callType);

  updateDeducedType(call, std::move(newCallType));
  updateDeducedType(calledFun, std::move(newFunType));

  for (auto&& [callArg, funArg] : zip(call->args(), calledFun->args())) {
    if (isa<Function>(callArg))
      // FIXME: the deduced type of functions is their return type (different LLVM-14 type), causing incompatible merges
      continue;

    const TransparentType* callArgType = getOrCreateDeducedType(callArg);
    const TransparentType* funArgType = getOrCreateDeducedType(&funArg);

    std::unique_ptr<TransparentType> newCallArgType = callArgType->mergeWith(funArgType);
    std::unique_ptr<TransparentType> newFunArgType = funArgType->mergeWith(callArgType);

    updateDeducedType(callArg, std::move(newCallArgType));
    updateDeducedType(&funArg, std::move(newFunArgType));
  }
}

void TypeDeductionAnalysis::deduceFromFunction(Function* function) {
  for (BasicBlock& bb : *function) {
    Instruction* termInst = bb.getTerminator();
    if (auto* returnInst = dyn_cast<ReturnInst>(termInst))
      if (Value* retValue = returnInst->getReturnValue()) {
        const TransparentType* funType = getOrCreateDeducedType(function);
        const TransparentType* retValueType = getOrCreateDeducedType(retValue);

        std::unique_ptr<TransparentType> newFunType = funType->mergeWith(retValueType);
        std::unique_ptr<TransparentType> newReturnType = retValueType->mergeWith(funType);

        updateDeducedType(function, std::move(newFunType));
        updateDeducedType(retValue, std::move(newReturnType));
      }
  }
}
