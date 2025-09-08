#include "TDAInfo/StructPaddingInfo.hpp"
#include "TDAInfo/TypeDeductionAnalysisInfo.hpp"
#include "TransparentType.hpp"

#include <llvm/IR/BasicBlock.h>
#include <llvm/IR/DerivedTypes.h>
#include <llvm/IR/InlineAsm.h>
#include <llvm/Support/Casting.h>
#include <llvm/Support/ErrorHandling.h>

#include <memory>
#include <sstream>

using namespace llvm;
using namespace tda;

bool containsPtrType(Type* type) {
  if (type->isSingleValueType() || type->isVoidTy())
    return type->isPointerTy();
  if (type->isArrayTy())
    return containsPtrType(type->getArrayElementType());
  if (auto* structType = dyn_cast<StructType>(type)) {
    for (Type* fieldType : structType->elements())
      if (containsPtrType(fieldType))
        return true;
    return false;
  }
  llvm_unreachable("Type not handled in containsPtrType");
}

std::unique_ptr<TransparentType> TransparentTypeFactory::create(const Value* value) {
  assert(value && "Cannot create type of null value");
  assert(!isa<BasicBlock>(value) && "BasicBlock cannot have a transparent type");
  if (auto* function = dyn_cast<Function>(value))
    return create(function->getReturnType(), 0);
  if (auto* global = dyn_cast<GlobalValue>(value))
    return create(global->getValueType(), 1);
  return create(value->getType(), 0);
}

std::unique_ptr<TransparentType> TransparentTypeFactory::create(Type* unwrappedType, const unsigned indirections) {
  if (auto* structType = dyn_cast_or_null<StructType>(unwrappedType))
    return std::unique_ptr<TransparentType>(new TransparentStructType(structType, indirections));
  if (auto* arrayType = dyn_cast_or_null<ArrayType>(unwrappedType))
    return std::unique_ptr<TransparentType>(new TransparentArrayType(arrayType, indirections));
  if (auto* vectorType = dyn_cast_or_null<VectorType>(unwrappedType))
    return std::unique_ptr<TransparentType>(new TransparentArrayType(vectorType, indirections));
  return std::unique_ptr<TransparentType>(new TransparentType(unwrappedType, indirections));
}

std::unique_ptr<TransparentType>
TransparentTypeFactory::create(SmallVector<std::unique_ptr<TransparentType>>& fieldTypes,
                               const SmallVector<unsigned>& fieldOffsets,
                               const SmallVector<unsigned>& fieldSizes,
                               const unsigned indirections) {
  return std::unique_ptr<TransparentStructType>(
    new TransparentStructType(fieldTypes, fieldOffsets, fieldSizes, indirections));
}

std::unique_ptr<TransparentType> TransparentType::getPointedType() const {
  if (isPlaceholder())
    return nullptr;
  assert(isPointerTy() && "Not a pointer type");
  if (indirections == 0)
    return nullptr;
  std::unique_ptr<TransparentType> pointedType = clone();
  pointedType->indirections--;
  return pointedType;
}

std::unique_ptr<TransparentType> TransparentType::getPointerToType() const {
  std::unique_ptr<TransparentType> pointedType = clone();
  pointedType->indirections++;
  return pointedType;
}

const TransparentType* TransparentType::getIndexedType(Type* gepSrcElType,
                                                       const iterator_range<const Use*> gepIndices) const {
  if (isScalarTT())
    // We can't know anything
    return nullptr;
  const TransparentType* currType = this;
  if ((isStructTT() && isa<StructType>(gepSrcElType))
      || (isArrayTT() && (isa<ArrayType>(gepSrcElType) || isa<VectorType>(gepSrcElType)))) {
    bool first = true;
    for (const Value* indexValue : gepIndices) {
      if (first) {
        if (const auto* indexConstant = dyn_cast<ConstantInt>(indexValue))
          if (indexConstant->getSExtValue() == 0) {
            first = false;
            continue;
          }
        // We don't really know which type we are looking at when the first index is not 0
        return nullptr;
      }
      if (auto* structType = dyn_cast<TransparentStructType>(currType)) {
        const unsigned fieldIndex = cast<ConstantInt>(indexValue)->getZExtValue();
        currType = structType->getFieldType(fieldIndex);
      }
      else if (auto* arrayType = dyn_cast<TransparentArrayType>(currType)) {
        // Any array index selects the element type
        currType = arrayType->getElementType();
      }
      else if (currType->getUnwrappedLLVMType()->isPointerTy()) {
        // We can't do more until we deduce this pointer type
        return nullptr;
      }
      else
        llvm_unreachable("Invalid gep instruction");
    }
    return currType;
  }
  if (const auto* thisArray = dyn_cast<TransparentArrayType>(this)) {
    TransparentType* elementType = thisArray->getElementType();
    if (elementType->getUnwrappedLLVMType() == gepSrcElType && indirections == 1)
      return elementType;
  }
  if (gepSrcElType->getNumContainedTypes() == 0) {
    const auto* indexConstant = dyn_cast<ConstantInt>(gepIndices.begin());
    if (!indexConstant)
      return nullptr;
    const DataLayout* dataLayout = TypeDeductionAnalysisInfo::getInstance().getDataLayout();
    long index = indexConstant->getSExtValue();
    unsigned srcElTypeSize = dataLayout->getTypeAllocSize(gepSrcElType);
    if (const auto* thisArray = dyn_cast<TransparentArrayType>(this)) {
      TransparentType* elementType = thisArray->getElementType();
      unsigned elementSize = dataLayout->getTypeAllocSize(elementType->toLLVMType());
      if (unsigned numElements = thisArray->getNumElements()) {
        unsigned totalArraySize = numElements * elementSize;
        if (index < totalArraySize / srcElTypeSize && // In bounds
            index * srcElTypeSize % elementSize == 0) // Not mid-element
          return elementType;
      }
      return nullptr;
    }
    llvm_unreachable("Implement me");
  }
  llvm_unreachable("Gep case not handled");
}

TransparentType* TransparentType::setIndexedType(const TransparentType* fieldType,
                                                 Type* gepSrcElType,
                                                 const iterator_range<const Use*> gepIndices) {
  if (isScalarTT())
    // We can't know anything
    return this;
  unsigned numIndices = gepIndices.end() - gepIndices.begin();
  TransparentType* currType = this;
  if ((isStructTT() && isa<StructType>(gepSrcElType))
      || (isArrayTT() && (isa<ArrayType>(gepSrcElType) || isa<VectorType>(gepSrcElType)))) {
    unsigned indexCount = 0;
    bool isLastIndex = false;
    bool first = true;
    for (Value* indexValue : gepIndices) {
      indexCount++;
      isLastIndex = (indexCount == numIndices);
      if (first) {
        if (const auto* indexConstant = dyn_cast<ConstantInt>(indexValue))
          if (indexConstant->getSExtValue() == 0) {
            first = false;
            continue;
          }
        // We don't really know which type we are looking at when the first index is not 0
        return this;
      }
      if (auto structType = dyn_cast<TransparentStructType>(currType)) {
        unsigned fieldIndex = cast<ConstantInt>(indexValue)->getZExtValue();
        if (isLastIndex)
          structType->setFieldType(fieldIndex, fieldType->clone());
        else
          currType = structType->getFieldType(fieldIndex);
      }
      else if (auto arrayType = dyn_cast<TransparentArrayType>(currType)) {
        // Any array index selects the element type
        if (isLastIndex)
          arrayType->setElementType(fieldType->clone());
        else
          currType = arrayType->getElementType();
      }
      else if (currType->getUnwrappedLLVMType()->isPointerTy()) {
        // We can't do more until we deduce this pointer type
        return this;
      }
      else
        llvm_unreachable("Invalid gep instruction");
    }
    return this;
  }
  if (const auto* thisArray = dyn_cast<TransparentArrayType>(this)) {
    TransparentType* elementType = thisArray->getElementType();
    if (elementType->getUnwrappedLLVMType() == gepSrcElType && indirections == 1)
      return this;
  }
  if (gepSrcElType->getNumContainedTypes() == 0) {
    const auto* indexConstant = dyn_cast<ConstantInt>(gepIndices.begin());
    if (!indexConstant)
      return this;
    const DataLayout* dataLayout = TypeDeductionAnalysisInfo::getInstance().getDataLayout();
    long index = indexConstant->getSExtValue();
    unsigned srcElTypeSize = dataLayout->getTypeAllocSize(gepSrcElType);
    if (auto* thisArray = dyn_cast<TransparentArrayType>(this)) {
      TransparentType* elementType = thisArray->getElementType();
      unsigned elementSize = dataLayout->getTypeAllocSize(elementType->toLLVMType());
      if (unsigned numElements = thisArray->getNumElements()) {
        unsigned totalArraySize = numElements * elementSize;
        if (index < totalArraySize / srcElTypeSize && // In bounds
            index * srcElTypeSize % elementSize == 0) // Not mid-element
        {
          thisArray->setElementType(fieldType->clone());
          return this;
        }
      }
      return this;
    }
  }
  llvm_unreachable("Gep case not handled");
}

int TransparentType::compare(const TransparentType& other) const {
  if (*this == other)
    return 0;

  bool thisOpaque = isOpaque();
  bool otherOpaque = other.isOpaque();
  if (thisOpaque && !otherOpaque)
    return -1;
  if (!thisOpaque && otherOpaque)
    return 1;

  if (indirections < other.indirections)
    return -1;
  if (indirections > other.indirections)
    return 1;

  return 0;
}

Type* TransparentType::toLLVMType() const {
  if (indirections > 0)
    return PointerType::get(unwrappedType->getContext(), 0);
  return unwrappedType;
}

bool TransparentType::operator==(const TransparentType& other) const {
  return getKind() == other.getKind() && unwrappedType == other.unwrappedType && indirections == other.indirections;
}

bool TransparentType::isCompatibleWith(const TransparentType* other) const {
  if (!other)
    return true;
  if (isPlaceholder() || other->isPlaceholder())
    return true;
  bool isPointer = isPointerTy();
  bool isOtherPointer = other->isPointerTy();
  if (isPointer || isOtherPointer) {
    if (!(isPointer && isOtherPointer))
      return false;
    if (isOpaque() || other->isOpaque())
      return true;
    const std::unique_ptr<TransparentType> pointedType = getPointedType();
    const std::unique_ptr<TransparentType> otherPointedType = other->getPointedType();
    return pointedType->isCompatibleWith(otherPointedType.get());
  }
  if (const auto* otherArray = dyn_cast<TransparentArrayType>(other))
    return otherArray->getElementType()->isCompatibleWith(this);
  if (isScalarTT()) {
    if (!other->isScalarTT())
      return false;
    return getFullyUnwrappedLLVMType() == other->getFullyUnwrappedLLVMType();
  }
  return getKind() == other->getKind();
}

std::unique_ptr<TransparentType> TransparentType::mergeWith(const TransparentType* other) const {
  if (!other || other->isPlaceholder())
    return clone();
  if (isPlaceholder())
    return other->clone();
  assert(isCompatibleWith(other) && "mergeWith on incompatible types");
  if (isPointerTy() || other->isPointerTy()) {
    const bool opaque = isOpaque();
    const bool otherOpaque = other->isOpaque();
    if (!opaque && !otherOpaque) {
      const std::unique_ptr<TransparentType> pointedType = getPointedType();
      const std::unique_ptr<TransparentType> otherPointedType = other->getPointedType();
      const std::unique_ptr<TransparentType> mergedPointedType = pointedType->mergeWith(otherPointedType.get());
      return mergedPointedType->getPointerToType();
    }
    if (!otherOpaque)
      return other->clone();
    return clone();
  }
  if (const auto* otherArray = dyn_cast<TransparentArrayType>(other))
    return otherArray->mergeWith(this);
  if (isScalarTT())
    return clone();
  llvm_unreachable("Not a pointer nor a scalar");
}

std::unique_ptr<TransparentType> TransparentType::clone() const {
  return std::unique_ptr<TransparentType>(new TransparentType(*this));
}

std::string TransparentType::toString() const {
  if (isPlaceholder())
    return "_";
  return tda::toString(unwrappedType) + std::string(indirections, '*');
}

void TransparentType::incrementIndirections(int increment) {
  if (increment < 0)
    assert(-increment <= static_cast<int>(indirections) && "Indirections underflow");
  else
    assert(indirections <= UINT_MAX - increment && "Indirections overflow");
  indirections += increment;
}

bool TransparentArrayType::isOpaque() const {
  if (TransparentType::isOpaque())
    return true;
  return elementType->isOpaque();
}

int TransparentArrayType::compare(const TransparentType& other) const {
  // assert(!isa<TransparentStructType>(other) && "Array and struct cannot be compared");
  if (!isa<TransparentArrayType>(other)) {
    // If an array is compared to a scalar or a ptr return myself because at least we know that we are an array
    return 1;
  }
  const auto& otherArray = cast<TransparentArrayType>(other);
  int cmp = TransparentType::compare(other);
  if (cmp != 0)
    return cmp;
  return elementType->compare(*otherArray.elementType);
}

SmallPtrSet<Type*, 4> TransparentArrayType::getContainedLLVMTypes() const {
  SmallPtrSet<Type*, 4> containedTypes = TransparentType::getContainedLLVMTypes();
  SmallPtrSet<Type*, 4> elementContaineTypes = getElementType()->getContainedLLVMTypes();
  containedTypes.insert(elementContaineTypes.begin(), elementContaineTypes.end());
  return containedTypes;
}

unsigned TransparentArrayType::getNumElements() const {
  if (!unwrappedType)
    return 0;
  if (isa<ArrayType>(unwrappedType))
    return unwrappedType->getArrayNumElements();
  if (auto* vectorType = dyn_cast<VectorType>(unwrappedType))
    return vectorType->getElementCount().getKnownMinValue();
  return 0;
}

bool TransparentArrayType::operator==(const TransparentType& other) const {
  if (this == &other)
    return true;
  if (getKind() != other.getKind())
    return false;

  const auto& otherArray = cast<TransparentArrayType>(other);
  if (!TransparentType::operator==(other))
    return false;

  if (!elementType && !otherArray.elementType)
    return true;
  if (!elementType || !otherArray.elementType)
    return false;
  return *elementType == *otherArray.elementType;
}

bool TransparentArrayType::isCompatibleWith(const TransparentType* other) const {
  if (!other)
    return true;
  if (isPointerTy() || other->isPointerTy())
    return TransparentType::isCompatibleWith(other);
  if (const auto* otherArray = dyn_cast<TransparentArrayType>(other)) {
    // TODO check lengths
    return getElementType()->isCompatibleWith(otherArray->getElementType());
  }
  return getElementType()->isCompatibleWith(other);
}

std::unique_ptr<TransparentType> TransparentArrayType::mergeWith(const TransparentType* other) const {
  if (!other)
    return clone();
  if (isPointerTy() || other->isPointerTy())
    return TransparentType::mergeWith(other);
  std::unique_ptr<TransparentType> result = clone();
  std::unique_ptr<TransparentType> mergedElem;
  if (const auto* otherArray = dyn_cast<TransparentArrayType>(other))
    mergedElem = getElementType()->mergeWith(otherArray->getElementType());
  else
    mergedElem = getElementType()->mergeWith(other);
  cast<TransparentArrayType>(result.get())->setElementType(std::move(mergedElem));
  return result;
}

std::unique_ptr<TransparentType> TransparentArrayType::clone() const {
  return std::unique_ptr<TransparentType>(new TransparentArrayType(*this));
}

std::string TransparentArrayType::toString() const {
  if (!elementType)
    return "InvalidType";
  std::stringstream ss;
  if (!unwrappedType)
    ss << "[" << *elementType << "]";
  else if (isa<ArrayType>(unwrappedType))
    ss << "[" << unwrappedType->getArrayNumElements() << " x " << *elementType << "]";
  else if (auto* vectorType = dyn_cast<VectorType>(unwrappedType)) {
    ElementCount elementCount = vectorType->getElementCount();
    ss << "<";
    if (elementCount.isScalable())
      ss << "vscale x ";
    ss << elementCount.getKnownMinValue() << " x " << *elementType << ">";
  }
  ss << std::string(indirections, '*');
  return ss.str();
}

TransparentStructType::TransparentStructType(StructType* unwrappedType, const unsigned indirections)
: TransparentType(unwrappedType, indirections) {
  auto& passInfo = TypeDeductionAnalysisInfo::getInstance();
  const DataLayout* dataLayout = passInfo.getDataLayout();
  const StructLayout* structLayout = dataLayout ? dataLayout->getStructLayout(unwrappedType) : nullptr;
  std::optional<StructPaddingInfo> structPaddingInfo = passInfo.getStructPaddingInfo(unwrappedType);
  ArrayRef<StructPaddingInfo::ByteRange> paddingRanges =
    structPaddingInfo ? structPaddingInfo->getPaddingRanges() : ArrayRef<StructPaddingInfo::ByteRange>();
  for (unsigned i = 0; i < unwrappedType->getNumElements(); i++) {
    bool isPadding = std::ranges::any_of(paddingRanges, [&structLayout, i](const StructPaddingInfo::ByteRange& range) {
      return structLayout ? structLayout->getElementOffset(i) == range.first : false;
    });
    if (isPadding)
      paddingFields.insert(i);
    Type* fieldType = unwrappedType->getElementType(i);
    fieldTypes.push_back(TransparentTypeFactory::create(fieldType, 0));
  }
}

TransparentStructType::TransparentStructType(SmallVector<std::unique_ptr<TransparentType>>& fieldTypes,
                                             const SmallVector<unsigned>& fieldOffsets,
                                             const SmallVector<unsigned>& fieldSizes,
                                             const unsigned indirections) {
  for (auto& fieldType : fieldTypes)
    this->fieldTypes.push_back(std::move(fieldType));
  for (const auto& fieldOffset : fieldOffsets)
    this->fieldOffsets.push_back(fieldOffset);
  // TODO use sizes to compute which fields are padding
  this->indirections = indirections;
}

bool TransparentStructType::isOpaque() const {
  if (TransparentType::isOpaque())
    return true;
  for (const std::unique_ptr<TransparentType>& field : fieldTypes)
    if (!field || field->isOpaque())
      return true;
  return false;
}

bool TransparentStructType::containsFloatingPointType() const {
  for (const TransparentType* fieldType : getFieldTypes())
    if (fieldType->containsFloatingPointType())
      return true;
  return false;
}

int TransparentStructType::compare(const TransparentType& other) const {
  if (!isa<TransparentStructType>(other)) {
    // assert(other.isOpaquePointer() || other.isByteTyOrPtrTo());
    return 1;
  }
  const auto& otherStruct = cast<TransparentStructType>(other);
  assert(getNumFieldTypes() == otherStruct.getNumFieldTypes());

  int baseCmp = TransparentType::compare(other);
  if (baseCmp != 0)
    return baseCmp;

  int overallResult = 0;
  for (unsigned i = 0; i < fieldTypes.size(); i++) {
    int cmp = fieldTypes[i]->compare(*otherStruct.fieldTypes[i]);
    if (cmp == 0)
      continue;
    if (overallResult == 0)
      overallResult = cmp;
    else if ((overallResult > 0 && cmp < 0) || (overallResult < 0 && cmp > 0))
      return 0; // Conflicting fields' comparisons result in equal transparency
  }
  return overallResult;
}

SmallPtrSet<Type*, 4> TransparentStructType::getContainedLLVMTypes() const {
  SmallPtrSet<Type*, 4> containedTypes = TransparentType::getContainedLLVMTypes();
  for (const TransparentType* field : getFieldTypes()) {
    SmallPtrSet<Type*, 4> elementContainedTypes = field->getContainedLLVMTypes();
    containedTypes.insert(elementContainedTypes.begin(), elementContainedTypes.end());
  }
  return containedTypes;
}

bool TransparentStructType::operator==(const TransparentType& other) const {
  if (this == &other)
    return true;
  if (getKind() != other.getKind())
    return false;
  auto& otherStructType = cast<TransparentStructType>(other);
  if (!TransparentType::operator==(other))
    return false;
  if (fieldTypes.size() != otherStructType.fieldTypes.size())
    return false;
  for (unsigned i = 0; i < fieldTypes.size(); i++) {
    if (!fieldTypes[i] && !otherStructType.fieldTypes[i])
      continue;
    if (!fieldTypes[i] || !otherStructType.fieldTypes[i] || *fieldTypes[i] != *otherStructType.fieldTypes[i])
      return false;
  }
  return true;
}

bool TransparentStructType::isCompatibleWith(const TransparentType* other) const {
  if (!other)
    return true;
  if (isPointerTy() || other->isPointerTy())
    return TransparentType::isCompatibleWith(other);
  if (const auto* otherArray = dyn_cast<TransparentArrayType>(other))
    return otherArray->getElementType()->isCompatibleWith(this);
  if (const auto* otherStruct = dyn_cast<TransparentStructType>(other)) {
    if (getNumFieldTypes() != otherStruct->getNumFieldTypes())
      return false;
    for (auto&& [field, otherField] : zip(fieldTypes, otherStruct->fieldTypes))
      if (!field->isCompatibleWith(otherField.get()))
        return false;
    return true;
  }
  return false;
}

std::unique_ptr<TransparentType> TransparentStructType::mergeWith(const TransparentType* other) const {
  if (!other)
    return clone();
  if (isPointerTy() || other->isPointerTy())
    return TransparentType::mergeWith(other);
  if (const auto* otherArray = dyn_cast<TransparentArrayType>(other))
    return otherArray->mergeWith(this);
  const auto otherStruct = cast<TransparentStructType>(other);
  auto result = clone();
  auto* resultStruct = cast<TransparentStructType>(result.get());
  for (unsigned i = 0, n = getNumFieldTypes(); i < n; ++i) {
    auto merged = getFieldType(i)->mergeWith(otherStruct->getFieldType(i));
    resultStruct->setFieldType(i, std::move(merged));
    if (isFieldPadding(i) || otherStruct->isFieldPadding(i))
      resultStruct->addFieldPadding(i);
  }
  return result;
}

std::unique_ptr<TransparentType> TransparentStructType::clone() const {
  return std::unique_ptr<TransparentType>(new TransparentStructType(*this));
}

std::string TransparentStructType::toString() const {
  if (std::ranges::any_of(fieldTypes, [](const auto& field) -> bool { return field == nullptr; }))
    return "InvalidType";

  std::string typeString = unwrappedType ? tda::toString(unwrappedType) : "{}";
  std::stringstream ss;
  ss << typeString.substr(0, typeString.find('{') + 1) << " ";

  bool first = true;
  for (unsigned i = 0; i < fieldTypes.size(); i++) {
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
  if (unwrappedType && cast<StructType>(unwrappedType)->isPacked())
    ss << ">";
  ss << std::string(indirections, '*');
  return ss.str();
}
