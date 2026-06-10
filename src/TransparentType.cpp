#include "TransparentType.hpp"
#include "TypeDispatcher.hpp"
#include "Utils/PrintUtils.hpp"

#include <llvm/ADT/ArrayRef.h>
#include <llvm/ADT/FoldingSet.h>
#include <llvm/ADT/STLExtras.h>
#include <llvm/ADT/SmallPtrSet.h>
#include <llvm/ADT/SmallSet.h>
#include <llvm/ADT/SmallVector.h>
#include <llvm/IR/DerivedTypes.h>
#include <llvm/IR/Instruction.h>
#include <llvm/IR/LLVMContext.h>
#include <llvm/IR/Type.h>
#include <llvm/IR/Use.h>
#include <llvm/IR/Value.h>
#include <llvm/Support/Casting.h>
#include <llvm/Support/ErrorHandling.h>
#include <llvm/Support/TypeSize.h>

#include <cassert>
#include <optional>
#include <sstream>
#include <utility>

namespace tda {

const TransparentType*
TransparentType::get(llvm::LLVMContext* llvmContext, const llvm::Type* primitiveType, const bool isUnion) {
  TypeDispatcher& dispatcher = TypeDispatcher::getInstance();
  return dispatcher.getOrCreatePrimitiveType(llvmContext, primitiveType, isUnion);
}

const TransparentType* TransparentType::get(const llvm::Type* llvmType, const unsigned indirections) {
  TypeDispatcher& dispatcher = TypeDispatcher::getInstance();
  return dispatcher.getOrCreateFromLLVMType(llvmType, indirections);
}

const TransparentType* TransparentType::get(const llvm::Value* value) {
  TypeDispatcher& dispatcher = TypeDispatcher::getInstance();
  return dispatcher.getOrCreateFromValue(value);
}

const std::pair<const TransparentType*, const TransparentType*> TransparentType::get(const llvm::Instruction* inst) {
  TypeDispatcher& dispatcher = TypeDispatcher::getInstance();
  return dispatcher.getOrCreateFromLoadStoreMetaData(inst);
}

bool TransparentType::classof(const TransparentType* type) { return type->getKind() == K_Primitive; }

TransparentType::~TransparentType() = default;

bool TransparentType::operator==(const TransparentType& otherType) const {
  return getKind() == otherType.getKind() && llvmType == otherType.llvmType;
}

bool TransparentType::operator!=(const TransparentType& otherType) const { return !(*this == otherType); }

TransparentType::TransparentTypeKind TransparentType::getKind() const { return K_Primitive; }

const llvm::Type* TransparentType::getLLVMType() const { return llvmType; }

const llvm::Type* TransparentType::toLLVMType() const { return llvmType; }

llvm::LLVMContext* TransparentType::getLLVMContext() const { return llvmContext; }

llvm::SmallPtrSet<const llvm::Type*, 8> TransparentType::getContainedLLVMTypes() const {
  if (llvmType)
    return {llvmType};
  return {};
}

bool TransparentType::isCompatibleLLVMType(const llvm::Type* llvmType) const {
  return llvmType->getNumContainedTypes() == 0;
}

const TransparentType* TransparentType::getFullyUnwrappedType() const { return this; }

const TransparentType* TransparentType::getPointedType() const {
  assert(isPointerTT() && "Accessing pointed type of a Non-Pointer Type!!");

  return nullptr;
}

const TransparentType* TransparentType::getFirstNonPtr() const { return this; }

bool TransparentType::isOpaquePtr() const { return false; }

bool TransparentType::containsOpaquePtr() const { return false; }

bool TransparentType::isPlaceholder() const { return (isPrimitiveTT() && !llvmType) || isUnion(); }

bool TransparentType::containsPlaceholder() const { return !llvmType; }

bool TransparentType::isUnion() const { return isPrimitiveTT() && isAUnion; }

bool TransparentType::isPrimitiveTT() const { return getKind() == K_Primitive; }

bool TransparentType::isPointerTT() const { return getKind() == K_Pointer; }

bool TransparentType::isArrayTT() const { return getKind() == K_Array; }

bool TransparentType::isStructTT() const { return getKind() == K_Struct; }

bool TransparentType::isPrimitiveTTOrPtrTo() const { return isPrimitiveTT(); }

bool TransparentType::isArrayTTOrPtrTo() const { return isArrayTT(); }

bool TransparentType::isStructTTOrPtrTo() const { return isStructTT(); }

bool TransparentType::isVoidTy() const { return llvmType && llvmType->isVoidTy(); }

bool TransparentType::isByteTyOrPtrTo() const {
  return llvmType && llvmType == llvm::Type::getInt8Ty(llvmType->getContext());
}

bool TransparentType::isIntegerTyOrPtrTo() const { return llvmType && llvmType->isIntegerTy(); }

bool TransparentType::isFloatingPointTyOrPtrTo() const { return llvmType && llvmType->isFloatingPointTy(); }

bool TransparentType::containsFloatingPointType() const { return llvmType->isFloatingPointTy(); }

const TransparentType* TransparentType::findGepSrcElementType(const TransparentType* type) const {
  const TransparentType* currType = this->getPointedType();

  while (currType) {
    if (currType->isStructurallyEquivalent(type))
      return currType;

    if (currType->isArrayTT())
      currType = llvm::cast<TransparentArrayType>(currType)->getElementType();

    else if (currType->isStructTT())
      currType = llvm::cast<TransparentStructType>(currType)->getFieldType(0);

    else
      currType = nullptr;
  }

  return currType;
}

bool TransparentType::isStructurallyEquivalent(const TransparentType* otherType) const {
  if (!otherType)
    return false;

  if (isPlaceholder() || otherType->isPlaceholder())
    return true;

  if (isPrimitiveTT() && otherType->isPrimitiveTT())
    return llvmType == otherType->llvmType;

  if (isPointerTT() && otherType->isPointerTT())
    return true;

  if (isArrayTT() && otherType->isArrayTT()) {
    const auto* thisArrayType = llvm::cast<TransparentArrayType>(this);
    const auto* otherArrayType = llvm::cast<TransparentArrayType>(otherType);

    return (thisArrayType->getElementType())->isStructurallyEquivalent(otherArrayType->getElementType());
  }

  if (isStructTT() && otherType->isStructTT()) {
    const auto* thisStructType = llvm::cast<TransparentStructType>(this);
    const auto* otherStructType = llvm::cast<TransparentStructType>(otherType);

    if (thisStructType->getNumFieldTypes() != otherStructType->getNumFieldTypes())
      return false;

    for (auto&& [thisFieldType, otherFieldType] :
         zip(thisStructType->getFieldTypes(), otherStructType->getFieldTypes()))
      if (!thisFieldType->isStructurallyEquivalent(otherFieldType))
        return false;

    return true;
  }

  return false;
}

bool TransparentType::isCompatibleWith(const TransparentType* otherType) const {
  if (!otherType)
    return true;

  if (isPlaceholder() || otherType->isPlaceholder() || isUnion() || otherType->isUnion())
    return true;

  bool isPointerType = isPointerTT();
  bool isOtherPointerType = otherType->isPointerTT();
  if (isPointerType || isOtherPointerType) {
    if (!(isPointerType && isOtherPointerType))
      return false;

    if (containsOpaquePtr() || otherType->containsOpaquePtr())
      return true;

    const TransparentType* pointedType = getPointedType();
    const TransparentType* otherPointedType = otherType->getPointedType();
    return pointedType->isCompatibleWith(otherPointedType);
  }

  if (const auto* otherArrayType = llvm::dyn_cast_or_null<TransparentArrayType>(otherType))
    return (otherArrayType->getElementType())->isCompatibleWith(this);

  if (isPrimitiveTT()) {
    if (!otherType->isPrimitiveTT())
      return false;

    return llvmType == otherType->llvmType;
  }

  return getKind() == otherType->getKind();
}

const TransparentType*
TransparentType::getOrSetIndexedType(const TransparentType* gepSrcElemType,
                                     std::optional<llvm::iterator_range<const llvm::Use*>> gepIndices,
                                     std::optional<const TransparentType*> setType) const {
  TypeDispatcher& dispatcher = TypeDispatcher::getInstance();
  return dispatcher.getOrCreateFromIndexedType(this, gepSrcElemType, gepIndices, setType);
}

const TransparentType* TransparentType::mergeWith(const TransparentType* otherType) const {
  TypeDispatcher& dispatcher = TypeDispatcher::getInstance();
  return dispatcher.getOrCreateFromMergeWithPrimitiveType(this, otherType);
}

std::string TransparentType::toString() const {
  if (isUnion())
    return "U";

  if (isPlaceholder())
    return "_";

  return tda::toString(llvmType);
}

TransparentType::TransparentType(llvm::LLVMContext* llvmContext, const llvm::Type* const llvmType, const bool isUnion)
: llvmContext(llvmContext), llvmType(llvmType), isAUnion(isUnion) {}

TransparentType::TransparentType(const TransparentType&) = default;

TransparentType::TransparentType(TransparentType&&) = default;

const TransparentPointerType* TransparentPointerType::get(llvm::LLVMContext* llvmContext,
                                                          const TransparentType* pointedType,
                                                          const unsigned indirections) {
  TypeDispatcher& dispatcher = TypeDispatcher::getInstance();
  return dispatcher.getOrCreatePointerType(llvmContext, pointedType, indirections);
}

bool TransparentPointerType::classof(const TransparentType* type) { return type->getKind() == K_Pointer; }

TransparentPointerType::~TransparentPointerType() = default;

bool TransparentPointerType::operator==(const TransparentType& otherType) const {
  if (this == &otherType)
    return true;

  if (getKind() != otherType.getKind())
    return false;

  const auto& otherPointerType = llvm::cast<TransparentPointerType>(otherType);

  if (!pointedType && !otherPointerType.pointedType)
    return true;

  if (!pointedType || !otherPointerType.pointedType)
    return false;

  return *pointedType == *otherPointerType.pointedType;
}

TransparentType::TransparentTypeKind TransparentPointerType::getKind() const { return K_Pointer; }

llvm::SmallPtrSet<const llvm::Type*, 8> TransparentPointerType::getContainedLLVMTypes() const {
  auto containedLLVMTypes = TransparentType::getContainedLLVMTypes();

  if (pointedType) {
    const auto pointedContainedLLVMTypes = pointedType->getContainedLLVMTypes();
    containedLLVMTypes.insert(pointedContainedLLVMTypes.begin(), pointedContainedLLVMTypes.end());
  }

  return containedLLVMTypes;
}

bool TransparentPointerType::isCompatibleLLVMType(const llvm::Type* llvmType) const { return llvmType->isPointerTy(); }

const TransparentType* TransparentPointerType::getFullyUnwrappedType() const {
  return pointedType ? pointedType->getFullyUnwrappedType() : this;
}

const TransparentType* TransparentPointerType::getPointedType() const { return pointedType ? pointedType : nullptr; }

const TransparentType* TransparentPointerType::getFirstNonPtr() const { return pointedType ? pointedType : nullptr; }

bool TransparentPointerType::isOpaquePtr() const { return !pointedType; }

bool TransparentPointerType::containsOpaquePtr() const { return !pointedType || pointedType->containsOpaquePtr(); }

bool TransparentPointerType::isPrimitiveTTOrPtrTo() const { return pointedType && pointedType->isPrimitiveTT(); }

bool TransparentPointerType::isArrayTTOrPtrTo() const { return pointedType && pointedType->isArrayTT(); }

bool TransparentPointerType::isStructTTOrPtrTo() const { return pointedType && pointedType->isStructTT(); }

bool TransparentPointerType::isByteTyOrPtrTo() const { return pointedType && pointedType->isByteTyOrPtrTo(); }

bool TransparentPointerType::isIntegerTyOrPtrTo() const { return pointedType && pointedType->isIntegerTyOrPtrTo(); }

bool TransparentPointerType::isFloatingPointTyOrPtrTo() const {
  return pointedType && pointedType->isFloatingPointTyOrPtrTo();
}

bool TransparentPointerType::containsFloatingPointType() const {
  return pointedType && pointedType->containsFloatingPointType();
}

bool TransparentPointerType::isCompatibleWith(const TransparentType* otherType) const {
  if (!otherType || otherType->isPlaceholder() || otherType->isUnion())
    return true;

  if (!otherType->isPointerTT())
    return false;

  if (isOpaquePtr() || otherType->isOpaquePtr() || isByteTyOrPtrTo() || otherType->isByteTyOrPtrTo())
    return true;

  const TransparentType* pointedType = getPointedType();
  const TransparentType* otherPointedType = otherType->getPointedType();
  return pointedType && otherPointedType ? pointedType->isCompatibleWith(otherPointedType) : true;
}

const TransparentPointerType* TransparentPointerType::setPointedType(const TransparentType* pointedType) const {
  if (pointedType == getPointedType())
    return this;

  TypeDispatcher& dispatcher = TypeDispatcher::getInstance();
  return dispatcher.getOrCreatePointerType(getLLVMContext(), pointedType);
}

const TransparentType* TransparentPointerType::mergeWith(const TransparentType* otherType) const {
  TypeDispatcher& dispatcher = TypeDispatcher::getInstance();
  return dispatcher.getOrCreateFromMergeWithPointerType(this, otherType);
}

std::string TransparentPointerType::toString() const {
  if (!pointedType)
    return "ptr";

  return pointedType->toString() + "*";
}

TransparentPointerType::TransparentPointerType(llvm::LLVMContext* llvmContext,
                                               const llvm::PointerType* llvmType,
                                               const TransparentType* const pointedType)
: TransparentType(llvmContext, llvmType), pointedType(pointedType) {}

TransparentPointerType::TransparentPointerType(const TransparentPointerType&) = default;

TransparentPointerType::TransparentPointerType(TransparentPointerType&&) = default;

const TransparentArrayType* TransparentArrayType::get(llvm::LLVMContext* llvmContext,
                                                      const TransparentType* elementType,
                                                      const llvm::Type* llvmType) {
  TypeDispatcher& dispatcher = TypeDispatcher::getInstance();
  return dispatcher.getOrCreateArrayType(llvmContext, elementType, llvmType);
}

bool TransparentArrayType::classof(const TransparentType* type) { return type->getKind() == K_Array; }

TransparentArrayType::~TransparentArrayType() = default;

void TransparentArrayType::Profile(llvm::FoldingSetNodeID& ID,
                                   const llvm::Type* llvmType,
                                   const TransparentType* elementType) {
  ID.AddPointer(llvmType);
  ID.AddPointer(elementType);
}

bool TransparentArrayType::operator==(const TransparentType& otherType) const {
  if (this == &otherType)
    return true;

  if (getKind() != otherType.getKind())
    return false;

  const auto& otherArrayType = llvm::cast<TransparentArrayType>(otherType);

  if (!TransparentType::operator==(otherType))
    return false;

  if (!elementType && !otherArrayType.elementType)
    return true;

  if (!elementType || !otherArrayType.elementType)
    return false;

  return *elementType == *otherArrayType.elementType;
}

TransparentType::TransparentTypeKind TransparentArrayType::getKind() const { return K_Array; }

llvm::SmallPtrSet<const llvm::Type*, 8> TransparentArrayType::getContainedLLVMTypes() const {
  llvm::SmallPtrSet<const llvm::Type*, 8> containedLLVMTypes = TransparentType::getContainedLLVMTypes();

  if (elementType) {
    llvm::SmallPtrSet<const llvm::Type*, 8> elementContainedLLVMTypes = elementType->getContainedLLVMTypes();
    containedLLVMTypes.insert(elementContainedLLVMTypes.begin(), elementContainedLLVMTypes.end());
  }

  return containedLLVMTypes;
}

bool TransparentArrayType::isCompatibleLLVMType(const llvm::Type* llvmType) const {
  return llvmType->isArrayTy() || llvmType->isVectorTy();
}

const TransparentType* TransparentArrayType::getFullyUnwrappedType() const {
  return getElementType()->getFullyUnwrappedType();
}

const TransparentType* TransparentArrayType::getElementType() const { return elementType; }

unsigned TransparentArrayType::getNumElements() const {
  if (!llvmType)
    return 0;

  if (const auto* arrayLLVMType = llvm::dyn_cast_or_null<llvm::ArrayType>(llvmType))
    return arrayLLVMType->getArrayNumElements();

  if (const auto* vectorLLVMType = llvm::dyn_cast_or_null<llvm::VectorType>(llvmType))
    return (vectorLLVMType->getElementCount()).getKnownMinValue();

  return 0;
}

bool TransparentArrayType::containsOpaquePtr() const {
  if (TransparentType::containsOpaquePtr())
    return true;

  return elementType->containsOpaquePtr();
}

bool TransparentArrayType::containsFloatingPointType() const { return getElementType()->containsFloatingPointType(); }

bool TransparentArrayType::isCompatibleWith(const TransparentType* otherType) const {
  if (!otherType || otherType->isUnion())
    return true;

  if (const auto* otherArrayType = llvm::dyn_cast_or_null<TransparentArrayType>(otherType)) {
    // TODO check lengths
    return getElementType()->isCompatibleWith(otherArrayType->getElementType());
  }

  return getElementType()->isCompatibleWith(otherType);
}

const TransparentArrayType* TransparentArrayType::setElementType(const TransparentType* elementType) const {
  if (elementType == getElementType())
    return this;

  const llvm::Type* newLLVMType = nullptr;
  const llvm::Type* elementLLVMType = elementType->getLLVMType();
  if (elementLLVMType) {
    const unsigned numElements = this->getNumElements();
    newLLVMType = llvm::ArrayType::get(const_cast<llvm::Type*>(elementLLVMType), numElements);
  }

  TypeDispatcher& dispatcher = TypeDispatcher::getInstance();
  return dispatcher.getOrCreateArrayType(getLLVMContext(), elementType, newLLVMType);
}

const TransparentType* TransparentArrayType::mergeWith(const TransparentType* otherType) const {
  TypeDispatcher& dispatcher = TypeDispatcher::getInstance();
  return dispatcher.getOrCreateFromMergeWithArrayType(this, otherType);
}

void TransparentArrayType::Profile(llvm::FoldingSetNodeID& ID) const { Profile(ID, llvmType, elementType); }

std::string TransparentArrayType::toString() const {
  if (!elementType)
    return "InvalidType";

  std::stringstream ss;
  if (!llvmType)
    ss << "[" << *elementType << "]";
  else if (const auto* arrayLLVMType = llvm::dyn_cast_or_null<llvm::ArrayType>(llvmType))
    ss << "[" << arrayLLVMType->getArrayNumElements() << " x " << *elementType << "]";
  else if (const auto* vectorLLVMType = llvm::dyn_cast_or_null<llvm::VectorType>(llvmType)) {
    llvm::ElementCount elementCount = vectorLLVMType->getElementCount();
    ss << "<";

    if (elementCount.isScalable())
      ss << "vscale x ";

    ss << elementCount.getKnownMinValue() << " x " << *elementType << ">";
  }

  return ss.str();
}

TransparentArrayType::TransparentArrayType(llvm::LLVMContext* llvmContext,
                                           const llvm::ArrayType* const llvmType,
                                           const TransparentType* const elementType)
: TransparentType(llvmContext, llvmType), elementType(elementType) {}

TransparentArrayType::TransparentArrayType(llvm::LLVMContext* llvmContext,
                                           const llvm::VectorType* const llvmType,
                                           const TransparentType* const elementType)
: TransparentType(llvmContext, llvmType), elementType(elementType) {}

TransparentArrayType::TransparentArrayType(llvm::LLVMContext* llvmContext, const TransparentType* const elementType)
: TransparentType(llvmContext, nullptr), elementType(elementType) {}

TransparentArrayType::TransparentArrayType(const TransparentArrayType&) = default;

TransparentArrayType::TransparentArrayType(TransparentArrayType&&) = default;

const TransparentStructType* TransparentStructType::get(llvm::LLVMContext* llvmContext,
                                                        const llvm::ArrayRef<const TransparentType*> fieldTypes,
                                                        const llvm::Type* llvmType,
                                                        llvm::ArrayRef<unsigned> fieldOffsets,
                                                        llvm::ArrayRef<unsigned> fieldSizes,
                                                        llvm::SmallSet<unsigned, 8> paddingFields) {
  TypeDispatcher& dispatcher = TypeDispatcher::getInstance();
  return dispatcher.getOrCreateStructType(llvmContext, fieldTypes, llvmType, fieldOffsets, fieldSizes, paddingFields);
}

bool TransparentStructType::classof(const TransparentType* type) { return type->getKind() == K_Struct; }

TransparentStructType::~TransparentStructType() = default;

void TransparentStructType::Profile(llvm::FoldingSetNodeID& ID,
                                    const llvm::Type* llvmType,
                                    const llvm::ArrayRef<const TransparentType*> fieldTypes) {
  ID.AddPointer(llvmType);

  for (const auto* f : fieldTypes)
    ID.AddPointer(f);
}

bool TransparentStructType::operator==(const TransparentType& otherType) const {
  if (this == &otherType)
    return true;

  if (getKind() != otherType.getKind())
    return false;

  const auto& otherStructType = llvm::cast<TransparentStructType>(otherType);

  if (!TransparentType::operator==(otherType))
    return false;

  if (fieldTypes.size() != otherStructType.fieldTypes.size())
    return false;

  for (unsigned i = 0; i < fieldTypes.size(); ++i) {
    if (!fieldTypes[i] && !otherStructType.fieldTypes[i])
      continue;

    if (!fieldTypes[i] || !otherStructType.fieldTypes[i] || *fieldTypes[i] != *otherStructType.fieldTypes[i])
      return false;
  }

  return true;
}

TransparentType::TransparentTypeKind TransparentStructType::getKind() const { return K_Struct; }

llvm::SmallPtrSet<const llvm::Type*, 8> TransparentStructType::getContainedLLVMTypes() const {
  llvm::SmallPtrSet<const llvm::Type*, 8> containedLLVMTypes = TransparentType::getContainedLLVMTypes();

  for (const TransparentType* fieldType : getFieldTypes()) {
    llvm::SmallPtrSet<const llvm::Type*, 8> fieldContainedLLVMTypes = fieldType->getContainedLLVMTypes();
    containedLLVMTypes.insert(fieldContainedLLVMTypes.begin(), fieldContainedLLVMTypes.end());
  }

  return containedLLVMTypes;
}

bool TransparentStructType::isCompatibleLLVMType(const llvm::Type* llvmType) const { return llvmType->isStructTy(); }

unsigned TransparentStructType::getNumFieldTypes() const { return fieldTypes.size(); }

const llvm::ArrayRef<const TransparentType*> TransparentStructType::getFieldTypes() const { return fieldTypes; }

const TransparentType* TransparentStructType::getFieldType(unsigned i) const { return fieldTypes[i]; }

unsigned TransparentStructType::getFieldOffset(unsigned i) const { return fieldOffsets[i]; }

unsigned TransparentStructType::getFieldSize(unsigned i) const { return fieldSizes[i]; }

unsigned TransparentStructType::getNumPaddingFields() const { return paddingFields.size(); }

const llvm::SmallSet<unsigned, 8>& TransparentStructType::getPaddingFields() const { return paddingFields; }

bool TransparentStructType::isFieldPadding(unsigned i) const { return llvm::is_contained(paddingFields, i); }

bool TransparentStructType::containsOpaquePtr() const {
  if (TransparentType::containsOpaquePtr())
    return true;

  for (const TransparentType* fieldType : fieldTypes)
    if (!fieldType || fieldType->containsOpaquePtr())
      return true;

  return false;
}

bool TransparentStructType::containsFloatingPointType() const {
  for (const TransparentType* fieldType : getFieldTypes())
    if (fieldType->containsFloatingPointType())
      return true;

  return false;
}

bool TransparentStructType::isCompatibleWith(const TransparentType* otherType) const {
  if (!otherType || otherType->isUnion())
    return true;

  if (const auto* otherArrayType = llvm::dyn_cast_or_null<TransparentArrayType>(otherType))
    return (otherArrayType->getElementType())->isCompatibleWith(this);

  if (const auto* otherStructType = llvm::dyn_cast_or_null<TransparentStructType>(otherType)) {
    const auto* structLLVMType = llvm::dyn_cast_or_null<llvm::StructType>(llvmType);
    const auto* otherStructLLVMType = llvm::dyn_cast_or_null<llvm::StructType>(otherType->getLLVMType());

    if (structLLVMType && otherStructLLVMType && structLLVMType->hasName() && otherStructLLVMType->hasName())
      if (structLLVMType->getName() != otherStructLLVMType->getName())
        return false;

    if (getNumFieldTypes() != otherStructType->getNumFieldTypes())
      return false;

    for (auto&& [fieldType, otherFieldType] : zip(fieldTypes, otherStructType->fieldTypes))
      if (!fieldType->isCompatibleWith(otherFieldType))
        return false;

    return true;
  }

  return false;
}

const TransparentStructType* TransparentStructType::setFieldType(const unsigned i,
                                                                 const TransparentType* fieldType) const {
  if (fieldType == getFieldType(i))
    return this;

  const auto oldFieldTypes = getFieldTypes();
  llvm::SmallVector<const TransparentType*, 8> newFieldTypes(oldFieldTypes.begin(), oldFieldTypes.end());
  newFieldTypes[i] = fieldType;

  TypeDispatcher& dispatcher = TypeDispatcher::getInstance();
  return dispatcher.getOrCreateStructType(getLLVMContext(), newFieldTypes);
}

const TransparentType* TransparentStructType::mergeWith(const TransparentType* otherType) const {
  TypeDispatcher& dispatcher = TypeDispatcher::getInstance();
  return dispatcher.getOrCreateFromMergeWithStructType(this, otherType);
}

void TransparentStructType::Profile(llvm::FoldingSetNodeID& ID) const { Profile(ID, llvmType, fieldTypes); }

std::string TransparentStructType::toString() const {
  if (llvm::is_contained(fieldTypes, nullptr))
    return "InvalidType";

  std::string typeString = llvmType ? tda::toString(llvmType) : "{}";
  std::stringstream ss;
  ss << typeString.substr(0, typeString.find('{') + 1) << " ";

  bool first = true;
  for (unsigned i = 0; i < fieldTypes.size(); ++i) {
    const auto& fieldType = fieldTypes[i];

    if (!first)
      ss << ", ";
    else
      first = false;
    if (isFieldPadding(i))
      ss << "pad";

    ss << *fieldType;
  }

  ss << " }";
  if (llvmType && llvm::cast<llvm::StructType>(llvmType)->isPacked())
    ss << ">";

  return ss.str();
}
TransparentStructType::TransparentStructType(llvm::LLVMContext* llvmContext,
                                             const llvm::StructType* const llvmType,
                                             const llvm::ArrayRef<const TransparentType*> fieldTypes,
                                             const llvm::ArrayRef<unsigned> fieldOffsets,
                                             const llvm::ArrayRef<unsigned> fieldSizes,
                                             const llvm::SmallSet<unsigned, 8> paddingFields)
: TransparentType(llvmContext, llvmType),
  fieldTypes(fieldTypes),
  fieldOffsets(fieldOffsets),
  fieldSizes(fieldSizes),
  paddingFields(paddingFields) {}

TransparentStructType::TransparentStructType(const TransparentStructType&) = default;

TransparentStructType::TransparentStructType(TransparentStructType&&) = default;

} // namespace tda
