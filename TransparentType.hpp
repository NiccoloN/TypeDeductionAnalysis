#pragma once

#include "Utils/PtrCasts.hpp"
#include "Utils/PrintUtils.hpp"

#include <llvm/ADT/SmallPtrSet.h>
#include <llvm/IR/DerivedTypes.h>
#include <llvm/IR/Type.h>

#include <memory>
#include <utility>

namespace tda {

class TransparentType;

class TransparentTypeFactory {
public:
  static std::shared_ptr<TransparentType> create(llvm::Type* type);
  static std::shared_ptr<TransparentType> create(const llvm::Value* value);
  static std::shared_ptr<TransparentType> create(llvm::Type* unwrappedType, unsigned indirections);
};

class TransparentType : public Printable {
public:
  enum TransparentTypeKind {
    K_Scalar,
    K_Array,
    K_Struct
  };

  static bool classof(const TransparentType* type) { return type->getKind() == K_Scalar; }

  bool isValid() const { return unwrappedType; }
  llvm::Type* getUnwrappedType() const { return unwrappedType; }
  virtual llvm::Type* getFullyUnwrappedType() const { return unwrappedType; }
  unsigned getIndirections() const { return indirections; }
  std::shared_ptr<TransparentType> getPointedType() const;
  virtual llvm::SmallPtrSet<llvm::Type*, 4> getContainedTypes() const { return {unwrappedType}; }
  bool isArrayType() const { return unwrappedType->isArrayTy() || unwrappedType->isVectorTy(); }
  bool isStructType() const { return unwrappedType->isStructTy(); }
  bool isFloatingPointType() const { return unwrappedType->isFloatingPointTy(); }
  bool isIntegerType() const { return unwrappedType->isIntegerTy(); }
  virtual bool containsFloatingPointType() const { return unwrappedType->isFloatingPointTy(); }
  bool isPointerType() const { return indirections > 0 || isOpaquePointer(); }
  bool isBytePointer() const { return unwrappedType == llvm::Type::getInt8Ty(unwrappedType->getContext()); }
  virtual bool isOpaquePointer() const { return unwrappedType->isPointerTy(); }
  virtual int compareTransparency(const TransparentType& other) const;
  llvm::Type* toLLVMType() const;
  virtual TransparentTypeKind getKind() const { return K_Scalar; }

  virtual bool operator==(const TransparentType& other) const;
  bool operator!=(const TransparentType& other) const { return !(*this == other); }

  virtual std::shared_ptr<TransparentType> clone() const;
  std::string toString() const override;

//protected:
  llvm::Type* unwrappedType = nullptr;
  unsigned indirections = 0;

  TransparentType() = default;
  TransparentType(const TransparentType& other) = default;

  TransparentType(llvm::Type* unwrappedType, unsigned indirections)
  : unwrappedType(unwrappedType), indirections(indirections) {}

  void incrementIndirections(int increment);
};

class TransparentArrayType : public TransparentType {
public:
  static bool classof(const TransparentType* type) { return type->getKind() == K_Array; }

  bool isOpaquePointer() const override;
  bool containsFloatingPointType() const override { return getArrayElementType()->containsFloatingPointType(); }
  int compareTransparency(const TransparentType& other) const override;
  std::shared_ptr<TransparentType> getArrayElementType() const { return elementType; }
  llvm::Type* getFullyUnwrappedType() const override { return getArrayElementType()->getFullyUnwrappedType(); }
  llvm::SmallPtrSet<llvm::Type*, 4> getContainedTypes() const override;
  std::shared_ptr<TransparentType> setArrayElementType(const std::shared_ptr<TransparentType>& elementType) {
    return this->elementType = elementType;
  }
  TransparentTypeKind getKind() const override { return K_Array; }

  bool operator==(const TransparentType& other) const override;

  std::shared_ptr<TransparentType> clone() const override;
  std::string toString() const override;

//protected:
  std::shared_ptr<TransparentType> elementType;

  TransparentArrayType() = default;

  TransparentArrayType(const TransparentArrayType& other)
  : TransparentType(other), elementType(other.elementType->clone()) {}

  TransparentArrayType(llvm::ArrayType* arrayType, unsigned indirections)
  : TransparentType(arrayType, indirections) {
    elementType = TransparentTypeFactory::create(arrayType->getElementType(), 0);
  }

  TransparentArrayType(llvm::VectorType* vecType, unsigned indirections)
  : TransparentType(vecType, indirections) {
    elementType = TransparentTypeFactory::create(vecType->getElementType(), 0);
  }
};

class TransparentStructType : public TransparentType {
public:
  static bool classof(const TransparentType* type) { return type->getKind() == K_Struct; }

  auto begin() { return fieldTypes.begin(); }
  auto end() { return fieldTypes.end(); }
  auto begin() const { return fieldTypes.begin(); }
  auto end() const { return fieldTypes.end(); }

  bool isOpaquePointer() const override;
  bool containsFloatingPointType() const override;
  int compareTransparency(const TransparentType& other) const override;
  std::shared_ptr<TransparentType> getFieldType(unsigned i) const { return fieldTypes[i]; }
  unsigned getNumFieldTypes() const { return fieldTypes.size(); }
  bool isFieldPadding(unsigned i) const { return llvm::is_contained(paddingFields, i); }
  unsigned getNumPaddingFields() const { return paddingFields.size(); }
  llvm::SmallPtrSet<llvm::Type*, 4> getContainedTypes() const override;
  TransparentTypeKind getKind() const override { return K_Struct; }

  bool operator==(const TransparentType& other) const override;

  std::shared_ptr<TransparentType> clone() const override;
  std::string toString() const override;

//protected:
  llvm::SmallVector<std::shared_ptr<TransparentType>, 8> fieldTypes;
  llvm::SmallVector<unsigned> paddingFields;

  TransparentStructType() = default;

  TransparentStructType(const TransparentStructType& other)
  : TransparentType(other) {
    for (const auto& field : other.fieldTypes)
      fieldTypes.push_back(field->clone());
    for (const auto& paddingFieldIdx : other.paddingFields)
      paddingFields.push_back(paddingFieldIdx);
  }

  TransparentStructType(llvm::StructType* unwrappedType, unsigned indirections);

  void setFieldType(unsigned i, std::shared_ptr<TransparentType> fieldType) { fieldTypes[i] = std::move(fieldType); }
};

} // namespace llvm

namespace std {

template <>
struct hash<shared_ptr<tda::TransparentType>> {
  size_t operator()(const shared_ptr<tda::TransparentType>& ptr) const noexcept {
    if (!ptr)
      return 0;

    size_t combined = 0;
    auto combine = [](size_t seed, size_t value) { return seed ^ (value + 0x9e3779b9 + (seed << 6) + (seed >> 2)); };
    combined = combine(combined, hash<llvm::Type*>()(ptr->getUnwrappedType()));
    combined = combine(combined, hash<unsigned>()(ptr->getIndirections()));

    if (auto arrayPtr = dynamic_ptr_cast<tda::TransparentArrayType>(ptr))
      combined = combine(combined, hash()(arrayPtr->getArrayElementType()));
    else if (auto structPtr = dynamic_ptr_cast<tda::TransparentStructType>(ptr))
      for (const auto& field : *structPtr)
        combined = combine(combined, hash()(field));

    return combined;
  }
};

template <>
struct equal_to<shared_ptr<tda::TransparentType>> {
  bool operator()(const shared_ptr<tda::TransparentType>& lhs, const shared_ptr<tda::TransparentType>& rhs) const {
    if (lhs == rhs)
      return true;
    if (!lhs || !rhs)
      return false;
    return *lhs == *rhs;
  }
};

} // namespace std
