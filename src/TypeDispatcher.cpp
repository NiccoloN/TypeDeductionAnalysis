#include "TDAInfo/TBAAParser.hpp"
#include "TDAInfo/TypeDeductionAnalysisInfo.hpp"
#include "TransparentType.hpp"
#include "TypeDispatcher.hpp"

#include "llvm/IR/Constants.h"
#include "llvm/IR/Instructions.h"
#include "llvm/Support/Casting.h"
#include "llvm/Support/ErrorHandling.h"
#include <llvm/ADT/ArrayRef.h>
#include <llvm/ADT/DenseMap.h>
#include <llvm/ADT/STLExtras.h>
#include <llvm/ADT/SmallSet.h>
#include <llvm/ADT/SmallVector.h>
#include <llvm/IR/DataLayout.h>
#include <llvm/IR/DerivedTypes.h>
#include <llvm/IR/Instruction.h>
#include <llvm/IR/LLVMContext.h>
#include <llvm/IR/Metadata.h>
#include <llvm/IR/Module.h>
#include <llvm/IR/Type.h>
#include <llvm/IR/Value.h>
#include <llvm/Support/Casting.h>
#include <llvm/Support/ErrorHandling.h>

#include <cassert>
#include <optional>
#include <utility>

namespace tda {

DispatcherContext::DispatcherContext() = default;

DispatcherContext::DispatcherContext(DispatcherContext&&) = default;

DispatcherContext& DispatcherContext::operator=(DispatcherContext&&) = default;

DispatcherContext::~DispatcherContext() {
  for (const auto* type : registry)
    type->~TransparentType();
}

TypeDispatcher::TypeDispatcher() = default;

TypeDispatcher::~TypeDispatcher() = default;

TypeDispatcher& TypeDispatcher::getInstance() {
  static TypeDispatcher instance;
  return instance;
}

void TypeDispatcher::registerModule(llvm::Module& llvmModule) {
  llvm::LLVMContext* llvmContext = &llvmModule.getContext();

  auto iter = contexts.find(llvmContext);
  assert(iter == contexts.end() && "Registering an already registered Module!!");

  contexts[llvmContext].dataLayout = &llvmModule.getDataLayout();
}

void TypeDispatcher::unregisterModule(llvm::Module& llvmModule) {
  llvm::LLVMContext* llvmContext = &llvmModule.getContext();

  auto iter = contexts.find(llvmContext);
  assert(iter != contexts.end() && "Unregistering an unregistered Module!!");

  contexts.erase(iter);
}

bool TypeDispatcher::isRegistered(llvm::Module& llvmModule) { return contexts.contains(&llvmModule.getContext()); }

DispatcherContext& TypeDispatcher::getDispatcherContext(llvm::LLVMContext* llvmContext) {
  auto iter = contexts.find(llvmContext);
  assert(iter != contexts.end() && "Trying to access Dispatcher Context for an unregistered Module!!");

  return iter->second;
}

const TransparentType* TypeDispatcher::createFromPrimitiveType(llvm::LLVMContext* llvmContext,
                                                               const llvm::Type* primitiveType,
                                                               const bool isUnion) {
  DispatcherContext& dispatcherContext = getDispatcherContext(llvmContext);

  bool isAUnion = isUnion;
  if (const auto* structType = llvm::dyn_cast_or_null<llvm::StructType>(primitiveType))
#if LLVM_VERSION_MAJOR <= 15
    isAUnion |= structType->hasName() && structType->getStructName().startswith("union.");
#else
    isAUnion |= structType->hasName() && structType->getStructName().starts_with("union.");
#endif

  if (isAUnion) {
    const TransparentType* unionType = createType<TransparentType>(llvmContext, nullptr, true);
    dispatcherContext.unionType = unionType;

    return dispatcherContext.unionType;
  }

  const TransparentType* newType = createType<TransparentType>(llvmContext, primitiveType, isUnion);
  dispatcherContext.primitiveTypes[primitiveType] = newType;

  return newType;
}

const TransparentPointerType* TypeDispatcher::createFromPointedType(llvm::LLVMContext* llvmContext,
                                                                    const TransparentType* pointedType,
                                                                    const unsigned indirections) {
  DispatcherContext& dispatcherContext = getDispatcherContext(llvmContext);

  const llvm::PointerType* llvmType = llvm::PointerType::get(*llvmContext, 0);

  const TransparentPointerType* newType = nullptr;
  for (unsigned i = 1; i <= indirections; ++i) {
    newType = createType<TransparentPointerType>(llvmContext, llvmType, pointedType);
    dispatcherContext.pointerTypes[pointedType] = newType;

    pointedType = newType;
  }

  return newType;
}

TransparentArrayType* TypeDispatcher::createFromElementType(llvm::LLVMContext* llvmContext,
                                                            const TransparentType* elementType,
                                                            const llvm::Type* llvmType,
                                                            void* insertPos) {
  DispatcherContext& dispatcherContext = getDispatcherContext(llvmContext);

  TransparentArrayType* newType = nullptr;
  if (const auto* arrayLLVMType = llvm::dyn_cast_or_null<llvm::ArrayType>(llvmType))
    newType = createType<TransparentArrayType>(llvmContext, arrayLLVMType, elementType);
  else if (const auto* vectorLLVMType = llvm::dyn_cast_or_null<llvm::VectorType>(llvmType))
    newType = createType<TransparentArrayType>(llvmContext, vectorLLVMType, elementType);
  else
    newType = createType<TransparentArrayType>(llvmContext, elementType);

  dispatcherContext.arrayTypes.InsertNode(newType, insertPos);

  return newType;
}

TransparentStructType* TypeDispatcher::createFromFieldTypes(llvm::LLVMContext* llvmContext,
                                                            const llvm::ArrayRef<const TransparentType*> fieldTypes,
                                                            const llvm::Type* llvmType,
                                                            llvm::ArrayRef<unsigned> fieldOffsets,
                                                            llvm::ArrayRef<unsigned> fieldSizes,
                                                            llvm::SmallSet<unsigned, 8> paddingFields,
                                                            void* insertPos) {
  DispatcherContext& dispatcherContext = getDispatcherContext(llvmContext);

  const auto* structLLVMType = llvm::dyn_cast_or_null<llvm::StructType>(llvmType);

  TransparentStructType* newType =
    createType<TransparentStructType>(llvmContext, structLLVMType, fieldTypes, fieldOffsets, fieldSizes, paddingFields);

  dispatcherContext.structTypes.InsertNode(const_cast<TransparentStructType*>(newType), insertPos);

  return newType;
}

const TransparentType*
TypeDispatcher::getOrCreateFromIndexedTypeRecursive(const TransparentType* currentType,
                                                    const TransparentType* gepSrcElemType,
                                                    const llvm::ArrayRef<const llvm::Value*> gepIndices,
                                                    const unsigned currentGepIndex) {
  assert(currentType && "Current type cannot be null!");

  llvm::LLVMContext* llvmContext = currentType->getLLVMContext();
  DispatcherContext& dispatcherContext = getDispatcherContext(llvmContext);
  const llvm::DataLayout* dataLayout = dispatcherContext.dataLayout;
  assert(dataLayout && "Accessing Data Layout for an unregistred Module!!");

  if (currentGepIndex >= gepIndices.size())
    return nullptr;

  const llvm::Value* indexValue = gepIndices[currentGepIndex];
  const bool isLastIndex = (currentGepIndex == gepIndices.size() - 1);

  // Both Array Types
  if (gepSrcElemType->isArrayTT() && currentType->isArrayTT()) {
    const auto* currentArrayType = llvm::cast<TransparentArrayType>(currentType);
    const auto* gepSrcElemArrayType = llvm::cast<TransparentArrayType>(gepSrcElemType);
    const TransparentType* currentElementType = currentArrayType->getElementType();
    const TransparentType* gepSrcElemElementType = gepSrcElemArrayType->getElementType();

    if (gepSrcElemElementType->isPrimitiveTT()) {
      assert((isLastIndex || gepIndices.empty()) && "gepIndices must be empty if Source Element Type is Primitive");

      if (currentElementType->isPrimitiveTT() || currentElementType->isPointerTT())
        return currentElementType;

      if (currentElementType->isArrayTT()) {
        const TransparentArrayType* currentElementArrayType = llvm::cast<TransparentArrayType>(currentElementType);
        return currentElementArrayType->getElementType();
      }

      if (currentElementType->isStructTT()) {
        const bool isZeroIndex = (!indexValue);
        const auto* indexConst = llvm::dyn_cast_or_null<llvm::ConstantInt>(indexValue);

        if (!indexConst && !isZeroIndex)
          return nullptr;
        const unsigned index = isZeroIndex ? 0 : indexConst->getZExtValue();

        std::function<const TransparentType*(const TransparentType*, unsigned)> rebuildNestedStruct =
          [&](const TransparentType* currentDrill, unsigned relativeIndex) -> const TransparentType* {
          const auto* currStructType = llvm::dyn_cast_or_null<TransparentStructType>(currentDrill);
          if (!currStructType)
            return nullptr;

          const llvm::StructLayout* structLayout = nullptr;
          const llvm::Type* currStructLLVMType = currStructType->getLLVMType();
          if (!currStructLLVMType)
            return nullptr;

          structLayout = dataLayout->getStructLayout(
            const_cast<llvm::StructType*>(llvm::cast<llvm::StructType>(currStructLLVMType)));

          const unsigned numFields = currStructType->getNumFieldTypes();
          for (unsigned i = 0; i < numFields; ++i) {
            const unsigned fieldOffset =
              structLayout ? structLayout->getElementOffset(i) : currStructType->getFieldOffset(i);
            unsigned nextFieldOffset = 0;
            if (i + 1 < numFields)
              nextFieldOffset =
                structLayout ? structLayout->getElementOffset(i + 1) : currStructType->getFieldOffset(i + 1);

            if (nextFieldOffset == 0 || (relativeIndex >= fieldOffset && relativeIndex < nextFieldOffset)) {
              const TransparentType* fieldType = currStructType->getFieldType(i);

              if (relativeIndex == fieldOffset)
                return fieldType;

              if (fieldType->isArrayTT())
                return llvm::cast<TransparentArrayType>(fieldType)->getElementType();

              const TransparentType* innerDrillType = rebuildNestedStruct(fieldType, relativeIndex - fieldOffset);
              return innerDrillType;
            }
          }

          return nullptr;
        };

        const TransparentType* drilledResultType = rebuildNestedStruct(currentElementType, index);
        return drilledResultType;
      }

      llvm_unreachable("Reached an unreachable primitive component configuration state!!");
    }

    if (gepIndices.empty() || isLastIndex)
      return currentElementType;

    const TransparentType* drilledChildType =
      getOrCreateFromIndexedTypeRecursive(currentElementType, gepSrcElemElementType, gepIndices, currentGepIndex + 1);
    return drilledChildType;
  }

  if (currentType->isArrayTT()) {
    const TransparentArrayType* currentArrayType = llvm::cast<TransparentArrayType>(currentType);
    if (gepIndices.empty() || isLastIndex)
      return currentArrayType->getElementType();

    llvm_unreachable("Mismatched layout structure tracking path bounds!!");
  }

  if (gepSrcElemType->isArrayTT() && currentType->isPrimitiveTT())
    return nullptr;

  // Both Struct Types
  if (gepSrcElemType->isStructTT() && currentType->isStructTT()) {
    const auto* indexConst = llvm::dyn_cast_or_null<llvm::ConstantInt>(indexValue);
    if (!indexConst)
      return nullptr;

    const unsigned index = indexConst->getZExtValue();
    const auto* currentStructType = llvm::cast<TransparentStructType>(currentType);
    const auto* gepSrcElemStructType = llvm::cast<TransparentStructType>(gepSrcElemType);

    if (index >= currentStructType->getNumFieldTypes() || index >= gepSrcElemStructType->getNumFieldTypes())
      return nullptr;

    const TransparentType* currentFieldType = currentStructType->getFieldType(index);
    const TransparentType* gepSrcElFieldType = gepSrcElemStructType->getFieldType(index);

    if (gepIndices.empty() || isLastIndex)
      return currentFieldType;

    const TransparentType* drilledFieldType =
      getOrCreateFromIndexedTypeRecursive(currentFieldType, gepSrcElFieldType, gepIndices, currentGepIndex + 1);
    return drilledFieldType;
  }

  if (gepSrcElemType->isStructTT())
    return nullptr;

  llvm_unreachable("Terminated tree operations at unresolvable branch leaves!!");
}

const TransparentType*
TypeDispatcher::getOrCreateFromIndexedTypeRecursive(const TransparentType* currentType,
                                                    const TransparentType* gepSrcElemType,
                                                    llvm::ArrayRef<const llvm::Value*> gepIndices,
                                                    const unsigned currentGepIndex,
                                                    const TransparentType* setType) {
  assert(currentType && "Current type cannot be null!");

  llvm::LLVMContext* llvmContext = currentType->getLLVMContext();
  DispatcherContext& dispatcherContext = getDispatcherContext(llvmContext);
  const llvm::DataLayout* dataLayout = dispatcherContext.dataLayout;
  assert(dataLayout && "Accessing Data Layout for an unregistred Module!!");

  if (currentGepIndex >= gepIndices.size())
    return nullptr;

  const llvm::Value* indexValue = gepIndices[currentGepIndex];
  const bool isLastIndex = (currentGepIndex == gepIndices.size() - 1);

  // Both Array Types
  if (gepSrcElemType->isArrayTT() && currentType->isArrayTT()) {
    const auto* currentArrayType = llvm::cast<TransparentArrayType>(currentType);
    const auto* gepSrcElemArrayType = llvm::cast<TransparentArrayType>(gepSrcElemType);
    const TransparentType* currentElementType = currentArrayType->getElementType();
    const TransparentType* gepSrcElemElementType = gepSrcElemArrayType->getElementType();

    if (gepSrcElemElementType->isPrimitiveTT()) {
      assert((isLastIndex || gepIndices.empty()) && "gepIndices must be empty if Source Element Type is Primitive");

      if (currentElementType->isPrimitiveTT() || currentElementType->isPointerTT()) {
        if (setType)
          return currentArrayType->setElementType(setType);
        return currentArrayType;
      }

      if (currentElementType->isArrayTT()) {
        const TransparentArrayType* currentElementArrayType = llvm::cast<TransparentArrayType>(currentElementType);

        if (setType) {
          const TransparentType* updatedInnerType = currentElementArrayType->setElementType(setType);
          return currentArrayType->setElementType(updatedInnerType);
        }
        return currentArrayType;
      }

      if (currentElementType->isStructTT()) {
        const bool isZeroIndex = (!indexValue);
        const auto* indexConst = llvm::dyn_cast_or_null<llvm::ConstantInt>(indexValue);

        if (!indexConst && !isZeroIndex)
          return nullptr;
        const unsigned index = isZeroIndex ? 0 : indexConst->getZExtValue();

        std::function<const TransparentType*(const TransparentType*, unsigned)> rebuildNestedStruct =
          [&](const TransparentType* currentDrill, unsigned relativeIndex) -> const TransparentType* {
          const auto* currStructType = llvm::dyn_cast_or_null<TransparentStructType>(currentDrill);
          if (!currStructType)
            return nullptr;

          const llvm::StructLayout* structLayout = nullptr;
          const llvm::Type* currStructLLVMType = currStructType->getLLVMType();
          if (!currStructLLVMType)
            return nullptr;

          structLayout = dataLayout->getStructLayout(
            const_cast<llvm::StructType*>(llvm::cast<llvm::StructType>(currStructLLVMType)));

          const unsigned numFields = currStructType->getNumFieldTypes();
          for (unsigned i = 0; i < numFields; ++i) {
            const unsigned fieldOffset =
              structLayout ? structLayout->getElementOffset(i) : currStructType->getFieldOffset(i);
            unsigned nextFieldOffset = 0;
            if (i + 1 < numFields)
              nextFieldOffset =
                structLayout ? structLayout->getElementOffset(i + 1) : currStructType->getFieldOffset(i + 1);

            if (nextFieldOffset == 0 || (relativeIndex >= fieldOffset && relativeIndex < nextFieldOffset)) {
              const TransparentType* fieldType = currStructType->getFieldType(i);

              if (relativeIndex == fieldOffset) {
                if (setType)
                  return currStructType->setFieldType(i, setType);
                return currStructType;
              }

              if (fieldType->isArrayTT()) {
                if (setType) {
                  const TransparentType* updatedField =
                    TransparentArrayType::get(llvmContext, setType, fieldType->getLLVMType());
                  return currStructType->setFieldType(i, updatedField);
                }
                return currStructType;
              }

              const TransparentType* innerDrillType = rebuildNestedStruct(fieldType, relativeIndex - fieldOffset);
              if (innerDrillType)
                return currStructType->setFieldType(i, innerDrillType);
              return currStructType;
            }
          }

          return nullptr;
        };

        const TransparentType* drilledResultType = rebuildNestedStruct(currentElementType, index);
        if (drilledResultType)
          return currentArrayType->setElementType(drilledResultType);
        return currentArrayType;
      }

      llvm_unreachable("Reached an unreachable primitive component configuration state!!");
    }

    if (gepIndices.empty() || isLastIndex) {
      if (setType)
        return currentArrayType->setElementType(setType);
      return currentArrayType;
    }

    const TransparentType* updatedChildType = getOrCreateFromIndexedTypeRecursive(
      currentElementType, gepSrcElemElementType, gepIndices, currentGepIndex + 1, setType);

    if (updatedChildType)
      return currentArrayType->setElementType(updatedChildType);
    return updatedChildType;
  }

  if (currentType->isArrayTT()) {
    const TransparentArrayType* currentArrayType = llvm::cast<TransparentArrayType>(currentType);

    if (gepIndices.empty() || isLastIndex) {
      if (setType)
        return currentArrayType->setElementType(setType);
      return currentArrayType;
    }

    llvm_unreachable("Mismatched layout structure tracking path bounds!!");
  }

  if (gepSrcElemType->isArrayTT() && currentType->isPrimitiveTT())
    return nullptr;

  // Both Struct Types
  if (gepSrcElemType->isStructTT() && currentType->isStructTT()) {
    const auto* indexConst = llvm::dyn_cast_or_null<llvm::ConstantInt>(indexValue);
    if (!indexConst)
      return nullptr;

    const unsigned index = indexConst->getZExtValue();
    const auto* currentStructType = llvm::cast<TransparentStructType>(currentType);
    const auto* gepSrcElemStructType = llvm::cast<TransparentStructType>(gepSrcElemType);

    if (index >= currentStructType->getNumFieldTypes() || index >= gepSrcElemStructType->getNumFieldTypes())
      return nullptr;

    const TransparentType* currentFieldType = currentStructType->getFieldType(index);
    const TransparentType* gepSrcElFieldType = gepSrcElemStructType->getFieldType(index);

    if (gepIndices.empty() || isLastIndex) {
      if (setType)
        return currentStructType->setFieldType(index, setType);
      return currentStructType;
    }

    const TransparentType* updatedFieldType = getOrCreateFromIndexedTypeRecursive(
      currentFieldType, gepSrcElFieldType, gepIndices, currentGepIndex + 1, setType);

    if (updatedFieldType)
      return currentStructType->setFieldType(index, updatedFieldType);
    return currentStructType;
  }

  if (gepSrcElemType->isStructTT())
    return nullptr;

  llvm_unreachable("Terminated tree operations at unresolvable branch leaves!!");
}

const TransparentType* TypeDispatcher::getOrCreatePrimitiveType(llvm::LLVMContext* llvmContext,
                                                                const llvm::Type* primitiveType,
                                                                const bool isUnion) {
  DispatcherContext& dispatcherContext = getDispatcherContext(llvmContext);

  auto assertPrimitive = [primitiveType]() {
    if (!primitiveType)
      return true;

    if (primitiveType->isVoidTy() || primitiveType->isSingleValueType()) {
      if (primitiveType->isPointerTy() || primitiveType->isArrayTy() || primitiveType->isVectorTy())
        return false;
      return true;
    }

    if (const auto* structType = llvm::dyn_cast<llvm::StructType>(primitiveType))
#if LLVM_VERSION_MAJOR <= 15
      return structType->hasName() && structType->getStructName().startswith("union.");
#else
      return structType->hasName() && structType->getStructName().starts_with("union.");
#endif

    return false;
  };

  assert(assertPrimitive() && "Primitive Type must be primitive, placeholder, void or union!!");
  assert((!primitiveType || &primitiveType->getContext() == llvmContext)
         && "The provided LLVM Primitive Type does not match with the provided LLVM Context!!");

  if (isUnion) {
    if (dispatcherContext.unionType)
      return dispatcherContext.unionType;

    const TransparentType* unionType = createFromPrimitiveType(llvmContext, nullptr, true);
    return unionType;
  }

  const auto iter = dispatcherContext.primitiveTypes.find(primitiveType);
  if (iter != dispatcherContext.primitiveTypes.end())
    return iter->second;

  const TransparentType* newType = createFromPrimitiveType(llvmContext, primitiveType, false);
  return newType;
}

const TransparentPointerType* TypeDispatcher::getOrCreatePointerType(llvm::LLVMContext* llvmContext,
                                                                     const TransparentType* pointedType,
                                                                     const unsigned indirections) {
  DispatcherContext& dispatcherContext = getDispatcherContext(llvmContext);

  // Pointed Type can be null, as that represents an Opaque Pointer!!
  assert(indirections > 0 && "Pointer Type must have indirections > 0!!");
  if (pointedType)
    assert(pointedType->getLLVMContext() == llvmContext
           && "The provided LLVM Pointer Type does not match with the provided LLVM Context!!");

  unsigned i = 1;
  while (i <= indirections) {
    const auto iter = dispatcherContext.pointerTypes.find(pointedType);
    if (iter != dispatcherContext.pointerTypes.end()) {
      if (i == indirections)
        return iter->second;
      else {
        pointedType = iter->second;
        ++i;
      }
    }
    else
      break;
  }

  const TransparentPointerType* newType = createFromPointedType(llvmContext, pointedType, indirections - i + 1);
  return newType;
}

const TransparentArrayType* TypeDispatcher::getOrCreateArrayType(llvm::LLVMContext* llvmContext,
                                                                 const TransparentType* elementType,
                                                                 const llvm::Type* llvmType) {
  DispatcherContext& dispatcherContext = getDispatcherContext(llvmContext);

  assert(elementType && "Element Type must be non-null!!");
  assert(elementType->getLLVMContext() == llvmContext
         && "The provided LLVM Element Type does not match with the provided LLVM Context!!");
  assert((!llvmType || llvm::isa<llvm::ArrayType>(llvmType) || llvm::isa<llvm::VectorType>(llvmType))
         && "Non-Array (or Vector) LLVM Type assigned to Array Type!!");

  if (!llvmType && !elementType->containsPlaceholder())
    llvmType = llvm::ArrayType::get(const_cast<llvm::Type*>(elementType->getLLVMType()), 0);
  else if (llvmType)
    assert(&llvmType->getContext() == llvmContext
           && "The provided LLVM Struct Type does not match with the provided LLVM Context!!");

  llvm::FoldingSetNodeID ID;
  TransparentArrayType::Profile(ID, llvmType, elementType);

  void* insertPos = nullptr;
  if (const TransparentArrayType* existingType = dispatcherContext.arrayTypes.FindNodeOrInsertPos(ID, insertPos))
    return existingType;

  TransparentArrayType* newType = createFromElementType(llvmContext, elementType, llvmType, insertPos);
  return newType;
}

const TransparentStructType*
TypeDispatcher::getOrCreateStructType(llvm::LLVMContext* llvmContext,
                                      const llvm::ArrayRef<const TransparentType*> fieldTypes,
                                      const llvm::Type* llvmType,
                                      llvm::ArrayRef<unsigned> fieldOffsets,
                                      llvm::ArrayRef<unsigned> fieldSizes,
                                      llvm::SmallSet<unsigned, 8> paddingFields) {
  DispatcherContext& dispatcherContext = getDispatcherContext(llvmContext);
  const llvm::DataLayout* dataLayout = dispatcherContext.dataLayout;

  auto assertFieldTypes =
    std::all_of(fieldTypes.begin(), fieldTypes.end(), [](const TransparentType* t) { return t != nullptr; });
  assert(assertFieldTypes && "Field Types must be non-null!!");
  for (const auto* fieldType : fieldTypes) {
    assert(fieldType->getLLVMContext() == llvmContext
           && "The provided LLVM Field Type does not match with the provided LLVM Context!!");
  }
  assert((!llvmType || llvm::isa<llvm::StructType>(llvmType)) && "Non-Struct LLVM Type assigned to Struct Type!!");

  bool hasPlaceholders =
    llvm::any_of(fieldTypes, [](const TransparentType* type) { return type->containsPlaceholder(); });

  if (!llvmType && !hasPlaceholders) {
    const unsigned numFields = fieldTypes.size();
    llvm::SmallVector<llvm::Type*, 8> fieldLLVMTypes;

    fieldLLVMTypes.reserve(numFields);
    for (const auto* fieldType : fieldTypes)
      fieldLLVMTypes.push_back(const_cast<llvm::Type*>(fieldType->getLLVMType()));

    llvmType = llvm::StructType::get(*llvmContext, fieldLLVMTypes);
  }
  else if (llvmType)
    assert(&llvmType->getContext() == llvmContext
           && "The provided LLVM Struct Type does not match with the provided LLVM Context!!");

  llvm::FoldingSetNodeID ID;
  TransparentStructType::Profile(ID, llvmType, fieldTypes);

  void* insertPos = nullptr;
  if (const TransparentStructType* existingType = dispatcherContext.structTypes.FindNodeOrInsertPos(ID, insertPos))
    return existingType;

  const llvm::StructType* structLLVMType = llvm::dyn_cast_or_null<llvm::StructType>(llvmType);

  if (fieldOffsets.empty() && structLLVMType) {
    const unsigned numFields = fieldTypes.size();
    const llvm::StructLayout* structLayout = dataLayout->getStructLayout(const_cast<llvm::StructType*>(structLLVMType));
    llvm::SmallVector<unsigned, 8> offsets;

    offsets.reserve(numFields);
    for (unsigned i = 0; i < fieldTypes.size(); ++i)
      offsets.push_back(structLayout->getElementOffset(i));

    fieldOffsets = offsets;
  }

  if (fieldSizes.empty() && structLLVMType && !hasPlaceholders) {
    const unsigned numFields = fieldTypes.size();
    llvm::SmallVector<unsigned, 8> sizes;

    sizes.reserve(numFields);
    for (unsigned i = 0; i < fieldTypes.size(); ++i)
      sizes.push_back(dataLayout->getTypeAllocSize(const_cast<llvm::Type*>(fieldTypes[i]->getLLVMType())));

    fieldSizes = sizes;
  }

  if (paddingFields.empty() && structLLVMType) {
    const unsigned numFields = fieldTypes.size();
    const llvm::StructLayout* structLayout = dataLayout->getStructLayout(const_cast<llvm::StructType*>(structLLVMType));

    const auto& passInfo = TypeDeductionAnalysisInfo::getInstance();
    const auto structPaddingInfo = passInfo.getStructPaddingInfo(const_cast<llvm::StructType*>(structLLVMType));
    const auto paddingRanges =
      structPaddingInfo ? structPaddingInfo->getPaddingRanges() : llvm::ArrayRef<StructPaddingInfo::ByteRange>();

    for (unsigned i = 0; i < numFields; ++i) {
      bool isPadding = llvm::any_of(paddingRanges, [&structLayout, i](const auto& range) {
        return structLayout->getElementOffset(i) == range.first;
      });

      if (isPadding)
        paddingFields.insert(i);
    }
  }

  TransparentStructType* newType =
    createFromFieldTypes(llvmContext, fieldTypes, llvmType, fieldOffsets, fieldSizes, paddingFields, insertPos);
  return newType;
}

const TransparentType* TypeDispatcher::getOrCreateFromLLVMType(const llvm::Type* llvmType,
                                                               const unsigned indirections) {
  assert(llvmType && "Cannot create a transparent type from a null LLVM Type!");

  llvm::LLVMContext* llvmContext = &llvmType->getContext();

  const TransparentType* newType = nullptr;
  if (const auto* structType = llvm::dyn_cast_or_null<llvm::StructType>(llvmType)) {
    bool isUnion = false;
#if LLVM_VERSION_MAJOR <= 15
    isUnion = structType->hasName() && structType->getStructName().startswith("union.");
#else
    isUnion = structType->hasName() && structType->getStructName().starts_with("union.");
#endif
    if (isUnion)
      newType = TransparentType::get(llvmContext, structType, true);
    else {
      const unsigned numFields = (structType->elements()).size();
      llvm::SmallVector<const TransparentType*, 8> fieldTypes;

      fieldTypes.reserve(numFields);
      for (const auto* fieldLLVMType : structType->elements()) {
        const TransparentType* fieldType = TransparentType::get(fieldLLVMType);
        fieldTypes.push_back(fieldType);
      }

      newType = TransparentStructType::get(llvmContext, fieldTypes, structType);
    }
  }
  else if (const auto* arrayType = llvm::dyn_cast_or_null<llvm::ArrayType>(llvmType)) {
    const TransparentType* elementType = TransparentType::get(arrayType->getElementType());
    newType = TransparentArrayType::get(llvmContext, elementType, arrayType);
  }
  else if (const auto* vectorType = llvm::dyn_cast_or_null<llvm::VectorType>(llvmType)) {
    const TransparentType* elementType = TransparentType::get(vectorType->getElementType());
    newType = TransparentArrayType::get(llvmContext, elementType, vectorType);
  }
  else if (const auto* ptrType = llvm::dyn_cast_or_null<llvm::PointerType>(llvmType))
    newType = TransparentPointerType::get(llvmContext, nullptr);
  else
    newType = TransparentType::get(llvmContext, llvmType);

  if (indirections > 0)
    return TransparentPointerType::get(llvmContext, newType, indirections);
  else
    return newType;
}

const TransparentType* TypeDispatcher::getOrCreateFromValue(const llvm::Value* value) {
  assert(value && "Value must be non-null!!");
  assert(!isa<llvm::BasicBlock>(value) && "Value must not be a Basic Block!!");

  if (const auto* function = llvm::dyn_cast_or_null<llvm::Function>(value))
    return TransparentType::get(function->getReturnType());

  if (const auto* global = llvm::dyn_cast_or_null<llvm::GlobalValue>(value))
    return TransparentType::get(global->getValueType(), 1);

  return TransparentType::get(value->getType());
}

const std::pair<const TransparentType*, const TransparentType*>
TypeDispatcher::getOrCreateFromLoadStoreMetaData(const llvm::Instruction* inst) {
  assert((isa<llvm::LoadInst>(inst) || isa<llvm::StoreInst>(inst))
         && "Instruction must be Load or Store to extract info from MetaData!!");

  return TBAAParser::getOrCreateFromLoadStoreMetaData(inst);
}

const TransparentType*
TypeDispatcher::getOrCreateFromIndexedType(const TransparentType* ptrOperandType,
                                           const TransparentType* gepSrcElemType,
                                           std::optional<llvm::iterator_range<const llvm::Use*>> gepIndices,
                                           std::optional<const TransparentType*> setType) {
  assert(ptrOperandType && "Pointer Operand Type cannot be null!");
  assert(gepSrcElemType && "GEP Source Element Type cannot be null!");

  llvm::LLVMContext* llvmContext = ptrOperandType->getLLVMContext();
  assert(
    gepSrcElemType->getLLVMContext() == llvmContext
    && "The provided GEP Source Element Type Context does not match with the provided Pointer Operand Type Context!!");

  if (setType.has_value() && setType.value())
    assert(setType.value()->getLLVMContext() == llvmContext
           && "The provided Set Type Context does not match with the provided Pointer Operand Type Context!!");

  llvm::SmallVector<const llvm::Value*, 4> indices;
  if (gepIndices)
    indices.append(gepIndices->begin(), gepIndices->end());
  else
    indices.emplace_back(nullptr);

  const TransparentType* srcPointedType = ptrOperandType->getPointedType();
  if (!srcPointedType)
    return nullptr;

  const TransparentType* startingPointType = nullptr;
  if (gepIndices && (gepSrcElemType->isPrimitiveTT() || srcPointedType->isPrimitiveTT()))
    startingPointType = srcPointedType;
  else
    startingPointType = ptrOperandType->findGepSrcElementType(gepSrcElemType);

  if (!startingPointType)
    return nullptr;

  const TransparentArrayType* gepSrcElemArrayType = TransparentArrayType::get(llvmContext, gepSrcElemType);
  const TransparentArrayType* startingPointArrayType = TransparentArrayType::get(llvmContext, startingPointType);

  bool isSet = setType.has_value();
  const TransparentType* setTypeValue = isSet ? setType.value() : nullptr;
  if (isSet) {
    const TransparentType* resultType =
      getOrCreateFromIndexedTypeRecursive(startingPointArrayType, gepSrcElemArrayType, indices, 0, setTypeValue);

    if (!resultType)
      return nullptr;

    const auto* resultArrayType = llvm::cast<TransparentArrayType>(resultType);
    return TransparentPointerType::get(llvmContext, resultArrayType->getElementType());
  }
  else {
    const TransparentType* resultType =
      getOrCreateFromIndexedTypeRecursive(startingPointArrayType, gepSrcElemArrayType, indices, 0);
    return resultType;
  }
}

const TransparentType* TypeDispatcher::getOrCreateFromMergeWithPrimitiveType(const TransparentType* primitiveType,
                                                                             const TransparentType* otherType) {
  assert(primitiveType && "Primitive Type to merge cannot be null!");

  if (primitiveType == otherType)
    return primitiveType;

  if (!otherType || otherType->isPlaceholder() || primitiveType->isUnion())
    return primitiveType;

  llvm::LLVMContext* llvmContext = primitiveType->getLLVMContext();
  assert(otherType->getLLVMContext() == llvmContext
         && "The provided LLVM Contexts do not match in Merge With Primitive Type!!");

  if (primitiveType->isPlaceholder() || otherType->isUnion())
    return otherType;

  assert(primitiveType->isCompatibleWith(otherType) && "Merging Primitive Type with Incompatible Type!!");

  if (primitiveType->isPointerTT() && otherType->isPointerTT()) {
    const bool opaque = primitiveType->containsOpaquePtr();
    const bool otherOpaque = otherType->containsOpaquePtr();

    if (!opaque && !otherOpaque) {
      const TransparentType* pointedType = primitiveType->getPointedType();
      const TransparentType* otherPointedType = otherType->getPointedType();

      const TransparentType* mergedPointedType = pointedType->mergeWith(otherPointedType);
      if (mergedPointedType == pointedType)
        return primitiveType;
      else if (mergedPointedType == otherPointedType)
        return otherType;
      else
        return TransparentPointerType::get(llvmContext, mergedPointedType);
    }

    if (!otherOpaque)
      return otherType;

    return primitiveType;
  }

  if (const auto* otherArrayType = llvm::dyn_cast_or_null<TransparentArrayType>(otherType))
    return otherArrayType->mergeWith(primitiveType);

  if (primitiveType->isPrimitiveTT())
    return primitiveType;

  llvm_unreachable("Merging Primitive Type with not a pointer nor a scalar!!");
}

const TransparentType* TypeDispatcher::getOrCreateFromMergeWithPointerType(const TransparentPointerType* pointerType,
                                                                           const TransparentType* otherType) {
  assert(pointerType && "Pointer Type to merge cannot be null!");

  if (pointerType == otherType)
    return pointerType;

  if (!otherType || otherType->isPlaceholder())
    return pointerType;

  llvm::LLVMContext* llvmContext = pointerType->getLLVMContext();
  assert(otherType->getLLVMContext() == llvmContext
         && "The provided LLVM Contexts do not match in Merge With Pointer Type!!");

  if (otherType->isUnion())
    return otherType;

  if (pointerType->isByteTyOrPtrTo() && otherType->isByteTyOrPtrTo())
    return pointerType;

  if (const auto* otherPointerType = llvm::dyn_cast_or_null<TransparentPointerType>(otherType)) {
    const TransparentType* pointedType = pointerType->getPointedType();
    const TransparentType* otherPointedType = otherPointerType->getPointedType();

    if ((!pointedType || pointerType->isByteTyOrPtrTo()) && otherPointedType)
      return otherPointerType;

    if (pointedType && (!otherPointedType || otherPointerType->isByteTyOrPtrTo()))
      return pointerType;

    if (!pointedType && !otherPointedType)
      return pointerType;

    const TransparentType* mergedPointedType = pointedType->mergeWith(otherPointedType);
    if (mergedPointedType == pointedType)
      return pointerType;
    else if (mergedPointedType == otherPointedType)
      return otherType;
    else
      return TransparentPointerType::get(llvmContext, mergedPointedType);
  }

  llvm_unreachable("Merging Pointer Type with Non-Pointer Type!!");
}

const TransparentType* TypeDispatcher::getOrCreateFromMergeWithArrayType(const TransparentArrayType* arrayType,
                                                                         const TransparentType* otherType) {
  assert(arrayType && "Array Type to merge cannot be null!");

  if (arrayType == otherType)
    return arrayType;

  if (!otherType)
    return arrayType;

  llvm::LLVMContext* llvmContext = arrayType->getLLVMContext();
  assert(otherType->getLLVMContext() == llvmContext
         && "The provided LLVM Contexts do not match in Merge With Array Type!!");

  if (otherType->isUnion())
    return otherType;

  const TransparentType* mergedElemType = nullptr;
  bool equalToOtherArrayType = false;
  if (const auto* otherArrayType = llvm::dyn_cast_or_null<TransparentArrayType>(otherType)) {
    mergedElemType = (arrayType->getElementType())->mergeWith(otherArrayType->getElementType());
    equalToOtherArrayType = (mergedElemType == otherArrayType->getElementType());
  }
  else {
    mergedElemType = (arrayType->getElementType())->mergeWith(otherType);
    equalToOtherArrayType = false;
  }

  if (mergedElemType == arrayType->getElementType())
    return arrayType;
  else if (equalToOtherArrayType)
    return otherType;
  else
    return TransparentArrayType::get(llvmContext, mergedElemType);
}

const TransparentType* TypeDispatcher::getOrCreateFromMergeWithStructType(const TransparentStructType* structType,
                                                                          const TransparentType* otherType) {
  assert(structType && "Struct Type to merge cannot be null!");

  if (structType == otherType)
    return structType;

  if (!otherType)
    return structType;

  llvm::LLVMContext* llvmContext = structType->getLLVMContext();
  assert(otherType->getLLVMContext() == llvmContext
         && "The provided LLVM Contexts do not match in Merge With Struct Type!!");

  if (otherType->isUnion())
    return otherType;

  if (const auto* otherArrayType = llvm::dyn_cast_or_null<TransparentArrayType>(otherType))
    return structType->mergeWith(otherArrayType->getElementType());

  if (const auto* otherStructType = llvm::cast<TransparentStructType>(otherType)) {
    const unsigned numFields = structType->getFieldTypes().size();
    llvm::SmallVector<const TransparentType*, 8> fieldTypes;

    bool equalToStructType = true;
    bool equalToOtherStructType = true;
    fieldTypes.reserve(numFields);
    for (unsigned i = 0; i < numFields; ++i) {
      const TransparentType* structFieldType = structType->getFieldType(i);
      const TransparentType* otherStructFieldType = otherStructType->getFieldType(i);
      const TransparentType* mergedField = structFieldType->mergeWith(otherStructFieldType);

      equalToStructType &= (mergedField == structFieldType);
      equalToOtherStructType &= (mergedField == otherStructFieldType);

      fieldTypes.push_back(mergedField);
    }

    const llvm::Type* mergedLLVMType = structType->getLLVMType();
    const llvm::Type* structLLVMType = structType->getLLVMType();
    const llvm::Type* otherStructLLVMType = otherStructType->getLLVMType();
    if (structLLVMType || otherStructLLVMType) {
      if (structLLVMType && otherStructLLVMType) {
        bool isNamed = llvm::cast<llvm::StructType>(structLLVMType)->hasName();
        bool isOtherNamed = llvm::cast<llvm::StructType>(otherStructLLVMType)->hasName();

        if (isNamed && isOtherNamed)
          assert((structLLVMType == otherStructLLVMType) && "Merging Named Structs with Different Names!!");

        mergedLLVMType = isOtherNamed ? otherStructLLVMType : structLLVMType;
      }
      else if (structLLVMType)
        mergedLLVMType = structLLVMType;
      else
        mergedLLVMType = otherStructLLVMType;
    }

    equalToStructType &= (mergedLLVMType == structLLVMType);
    equalToOtherStructType &= (mergedLLVMType == otherStructLLVMType);

    if (equalToStructType)
      return structType;
    else if (equalToOtherStructType)
      return otherType;
    else
      return TransparentStructType::get(llvmContext, fieldTypes, mergedLLVMType);
  }

  llvm_unreachable("Merging Struct Type with Non-Struct Type!!");
}

const TransparentType* TypeDispatcher::getOrCreateMergedType(const TransparentType* type1,
                                                             const TransparentType* type2) {
  return type1->mergeWith(type2);
}

} // namespace tda
