#include "StructPaddingInfo.hpp"
#include "TransparentType.hpp"
#include "TypeDeductionAnalysisInfo.hpp"

#include <llvm/IR/BasicBlock.h>
#include <llvm/IR/DerivedTypes.h>
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

std::unique_ptr<TransparentType> TransparentTypeFactory::create(Type* type) {
  assert(!containsPtrType(type) && "Long life to transparent pointers!");
  return create(type, 0);
}

std::unique_ptr<TransparentType> TransparentTypeFactory::create(const Value* value) {
  assert(!isa<BasicBlock>(value) && "BasicBlock cannot have a transparent type");
  if (auto* function = dyn_cast<Function>(value))
    return create(function->getReturnType(), 0);
  if (auto* global = dyn_cast<GlobalValue>(value))
    return create(global->getValueType(), 1);
  return create(value->getType(), 0);
}

std::unique_ptr<TransparentType> TransparentTypeFactory::create(Type* unwrappedType, unsigned indirections) {
  if (auto* structType = dyn_cast<StructType>(unwrappedType))
    return std::unique_ptr<TransparentType>(new TransparentStructType(structType, indirections));
  if (auto* arrayType = dyn_cast<ArrayType>(unwrappedType))
    return std::unique_ptr<TransparentType>(new TransparentArrayType(arrayType, indirections));
  if (auto* vectorType = dyn_cast<VectorType>(unwrappedType))
    return std::unique_ptr<TransparentType>(new TransparentArrayType(vectorType, indirections));
  return std::unique_ptr<TransparentType>(new TransparentType(unwrappedType, indirections));
}

std::unique_ptr<TransparentType> TransparentType::getPointedType() const {
  assert(indirections > 0 && "Not a pointer type or opaque");
  std::unique_ptr<TransparentType> pointedType = clone();
  pointedType->indirections--;
  return pointedType;
}

std::unique_ptr<TransparentType> TransparentType::getPointerToType() const {
  std::unique_ptr<TransparentType> pointedType = clone();
  pointedType->indirections++;
  return pointedType;
}

int TransparentType::compareTransparency(const TransparentType& other) const {
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

std::unique_ptr<TransparentType> TransparentType::clone() const {
  return std::unique_ptr<TransparentType>(new TransparentType(*this));
}

std::string TransparentType::toString() const {
  if (!unwrappedType)
    return "InvalidType";
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

int TransparentArrayType::compareTransparency(const TransparentType& other) const {
  assert(!isa<TransparentStructType>(other) && "Array and struct cannot be compared");
  if (!isa<TransparentArrayType>(other)) {
    // If an array is compared to a scalar or a ptr return myself because at least we know that we are an array
    return 1;
  }
  const auto& otherArray = cast<TransparentArrayType>(other);
  int cmp = TransparentType::compareTransparency(other);
  if (cmp != 0)
    return cmp;
  return elementType->compareTransparency(*otherArray.elementType);
}

SmallPtrSet<Type*, 4> TransparentArrayType::getContainedLLVMTypes() const {
  SmallPtrSet<Type*, 4> containedTypes = TransparentType::getContainedLLVMTypes();
  SmallPtrSet<Type*, 4> elementContaineTypes = getArrayElementType()->getContainedLLVMTypes();
  containedTypes.insert(elementContaineTypes.begin(), elementContaineTypes.end());
  return containedTypes;
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

std::unique_ptr<TransparentType> TransparentArrayType::clone() const {
  return std::unique_ptr<TransparentType>(new TransparentArrayType(*this));
}

std::string TransparentArrayType::toString() const {
  if (!unwrappedType || !elementType)
    return "InvalidType";
  std::stringstream ss;
  ss << "[" << unwrappedType->getArrayNumElements() << " x " << *elementType << "]";
  ss << std::string(indirections, '*');
  return ss.str();
}

TransparentStructType::TransparentStructType(StructType* unwrappedType, unsigned indirections)
: TransparentType(unwrappedType, indirections) {
  auto& passInfo = TypeDeductionAnalysisInfo::getInstance();
  std::optional<StructPaddingInfo> structPaddingInfo = passInfo.getStructPaddingInfo(unwrappedType);
  ArrayRef<StructPaddingInfo::ByteRange> paddingRanges =
    structPaddingInfo ? structPaddingInfo->getPaddingRanges() : llvm::ArrayRef<StructPaddingInfo::ByteRange>();
  const StructLayout* structLayout = passInfo.getDataLayout()->getStructLayout(unwrappedType);
  for (unsigned i = 0; i < unwrappedType->getNumElements(); i++) {
    bool isPadding = std::ranges::any_of(paddingRanges, [&structLayout, i](const StructPaddingInfo::ByteRange& range) {
      return structLayout->getElementOffset(i) == range.first;
    });
    if (isPadding)
      paddingFields.insert(i);
    Type* fieldType = unwrappedType->getElementType(i);
    fieldTypes.push_back(TransparentTypeFactory::create(fieldType, 0));
  }
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
  for (const TransparentType* fieldType : this->getFieldTypes())
    if (fieldType->containsFloatingPointType())
      return true;
  return false;
}

int TransparentStructType::compareTransparency(const TransparentType& other) const {
  if (!isa<TransparentStructType>(other)) {
    //assert(other.isOpaquePointer() || other.isByteTyOrPtrTo());
    return 1;
  }
  const auto& otherStruct = cast<TransparentStructType>(other);
  assert(getNumFieldTypes() == otherStruct.getNumFieldTypes());

  int baseCmp = TransparentType::compareTransparency(other);
  if (baseCmp != 0)
    return baseCmp;

  int overallResult = 0;
  for (unsigned i = 0; i < fieldTypes.size(); i++) {
    int cmp = fieldTypes[i]->compareTransparency(*otherStruct.fieldTypes[i]);
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

std::unique_ptr<TransparentType> TransparentStructType::clone() const {
  return std::unique_ptr<TransparentType>(new TransparentStructType(*this));
}

std::string TransparentStructType::toString() const {
  if (!unwrappedType || std::ranges::any_of(fieldTypes, [](const std::unique_ptr<TransparentType>& field) -> bool {
        return field == nullptr;
      }))
    return "InvalidType";

  std::string typeString = tda::toString(unwrappedType);
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
  if (cast<StructType>(unwrappedType)->isPacked())
    ss << ">";
  ss << std::string(indirections, '*');
  return ss.str();
}
