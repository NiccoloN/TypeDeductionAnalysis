#pragma once

#include "Utils/PrintUtils.hpp"
#include "Utils/PtrCasts.hpp"

#include <llvm/ADT/SmallPtrSet.h>
#include <llvm/IR/DerivedTypes.h>
#include <llvm/IR/Type.h>

#include <memory>
#include <ranges>
#include <set>

namespace tda {

class TransparentType;

class TransparentTypeFactory {
public:
  static std::unique_ptr<TransparentType> create(const llvm::Value* value);
  static std::unique_ptr<TransparentType> create(llvm::Type* unwrappedType, unsigned indirections = 0);
};

class TransparentType : public Printable {
  friend TransparentTypeFactory;

public:
  enum TransparentTypeKind {
    K_Scalar,
    K_Array,
    K_Struct
  };

  static bool classof(const TransparentType* type) { return type->getKind() == K_Scalar; }

  virtual TransparentTypeKind getKind() const { return K_Scalar; }
  virtual bool isCompatibleLLVMType(llvm::Type* type) const { return type->getNumContainedTypes() == 0; }

  TransparentType() = default;

  llvm::Type* getUnwrappedLLVMType() const { return unwrappedType; }
  void setUnwrappedLLVMType(llvm::Type* unwrappedType) {
    assert(isCompatibleLLVMType(unwrappedType));
    this->unwrappedType = unwrappedType;
  }

  virtual llvm::Type* getFullyUnwrappedLLVMType() const { return unwrappedType; }

  unsigned getIndirections() const { return indirections; }
  void setIndirections(unsigned indirections) { this->indirections = indirections; }
  void incrementIndirections(int increment);

  std::unique_ptr<TransparentType> getPointedType() const;
  std::unique_ptr<TransparentType> getPointerToType() const;

  bool isValid() const { return unwrappedType; }
  virtual bool isOpaque() const { return unwrappedType->isPointerTy(); }
  bool isPointerTy() const { return indirections > 0 || isOpaque(); }

  bool isScalarTT() const { return getKind() == K_Scalar; }
  bool isArrayTT() const { return getKind() == K_Array; }
  bool isStructTT() const { return getKind() == K_Struct; }

  bool isVoidTy() const { return unwrappedType->isVoidTy(); }
  bool isByteTyOrPtrTo() const { return unwrappedType == llvm::Type::getInt8Ty(unwrappedType->getContext()); }
  bool isIntegerTyOrPtrTo() const { return unwrappedType->isIntegerTy(); }
  bool isFloatingPointTyOrPtrTo() const { return unwrappedType->isFloatingPointTy(); }

  virtual llvm::SmallPtrSet<llvm::Type*, 4> getContainedLLVMTypes() const { return {unwrappedType}; }
  virtual bool containsFloatingPointType() const { return unwrappedType->isFloatingPointTy(); }

  virtual int compareTransparency(const TransparentType& other) const;
  llvm::Type* toLLVMType() const;

  virtual bool operator==(const TransparentType& other) const;
  bool operator!=(const TransparentType& other) const { return !(*this == other); }

  virtual std::unique_ptr<TransparentType> clone() const;
  std::string toString() const override;

protected:
  llvm::Type* unwrappedType = nullptr;
  unsigned indirections = 0;

  TransparentType(const TransparentType& other) = default;

  TransparentType(llvm::Type* unwrappedType, unsigned indirections)
  : unwrappedType(unwrappedType), indirections(indirections) {}
};

class TransparentArrayType : public TransparentType {
  friend TransparentTypeFactory;

public:
  static bool classof(const TransparentType* type) { return type->getKind() == K_Array; }

  TransparentTypeKind getKind() const override { return K_Array; }
  bool isCompatibleLLVMType(llvm::Type* type) const override { return type->isArrayTy() || type->isVectorTy(); }

  TransparentArrayType() = default;

  bool isOpaque() const override;
  llvm::SmallPtrSet<llvm::Type*, 4> getContainedLLVMTypes() const override;
  bool containsFloatingPointType() const override { return getArrayElementType()->containsFloatingPointType(); }
  int compareTransparency(const TransparentType& other) const override;

  TransparentType* getArrayElementType() const { return elementType.get(); }
  void setArrayElementType(std::unique_ptr<TransparentType> elementType) { this->elementType = std::move(elementType); }

  llvm::Type* getFullyUnwrappedLLVMType() const override { return getArrayElementType()->getFullyUnwrappedLLVMType(); }

  bool operator==(const TransparentType& other) const override;

  std::unique_ptr<TransparentType> clone() const override;
  std::string toString() const override;

protected:
  std::unique_ptr<TransparentType> elementType;

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
  friend TransparentTypeFactory;

public:
  static bool classof(const TransparentType* type) { return type->getKind() == K_Struct; }

  TransparentTypeKind getKind() const override { return K_Struct; }
  bool isCompatibleLLVMType(llvm::Type* type) const override { return type->isStructTy(); }

  TransparentStructType() = default;

  bool isOpaque() const override;
  int compareTransparency(const TransparentType& other) const override;

  TransparentType* getFieldType(unsigned i) const { return fieldTypes[i].get(); }
  void setFieldType(unsigned i, std::unique_ptr<TransparentType> fieldType) { fieldTypes[i] = std::move(fieldType); }
  void addFieldType(std::unique_ptr<TransparentType> fieldType) { fieldTypes.push_back(std::move(fieldType)); }
  unsigned getNumFieldTypes() const { return fieldTypes.size(); }

  auto getFieldTypes() const {
    return fieldTypes | std::views::transform([](auto& smart_ptr) { return smart_ptr.get(); });
  }

  bool isFieldPadding(unsigned i) const { return llvm::is_contained(paddingFields, i); }
  void addFieldPadding(unsigned i) { paddingFields.insert(i); }
  unsigned getNumPaddingFields() const { return paddingFields.size(); }

  std::set<unsigned> getPaddingFields() const { return paddingFields; }

  llvm::SmallPtrSet<llvm::Type*, 4> getContainedLLVMTypes() const override;
  bool containsFloatingPointType() const override;

  bool operator==(const TransparentType& other) const override;

  std::unique_ptr<TransparentType> clone() const override;
  std::string toString() const override;

protected:
  llvm::SmallVector<std::unique_ptr<TransparentType>, 8> fieldTypes;
  std::set<unsigned> paddingFields;

  TransparentStructType(const TransparentStructType& other)
  : TransparentType(other) {
    for (const auto& field : other.fieldTypes)
      fieldTypes.push_back(field->clone());
    for (const auto& paddingFieldIdx : other.paddingFields)
      paddingFields.insert(paddingFieldIdx);
  }

  TransparentStructType(llvm::StructType* unwrappedType, unsigned indirections);
};

} // namespace tda

namespace std {

template <>
struct hash<tda::TransparentType*> {
  size_t operator()(const tda::TransparentType* type) const noexcept {
    if (!type)
      return 0;

    size_t combined = 0;
    auto combine = [](size_t seed, size_t value) { return seed ^ (value + 0x9e3779b9 + (seed << 6) + (seed >> 2)); };
    combined = combine(combined, hash<llvm::Type*>()(type->getUnwrappedLLVMType()));
    combined = combine(combined, hash<unsigned>()(type->getIndirections()));

    if (auto* arrayType = llvm::dyn_cast<tda::TransparentArrayType>(type))
      combined = combine(combined, hash()(arrayType->getArrayElementType()));
    else if (auto* structType = llvm::dyn_cast<tda::TransparentStructType>(type))
      for (const auto* field : structType->getFieldTypes())
        combined = combine(combined, hash()(field));

    return combined;
  }
};

template <>
struct equal_to<tda::TransparentType*> {
  bool operator()(const tda::TransparentType* lhs, const tda::TransparentType* rhs) const {
    if (lhs == rhs)
      return true;
    if (!lhs || !rhs)
      return false;
    return *lhs == *rhs;
  }
};

template <>
struct hash<std::unique_ptr<tda::TransparentType>> {
  size_t operator()(const std::unique_ptr<tda::TransparentType>& type) const noexcept {
    return hash<tda::TransparentType*>()(type.get());
  }
};

template <>
struct equal_to<unique_ptr<tda::TransparentType>> {
  bool operator()(const unique_ptr<tda::TransparentType>& lhs, const unique_ptr<tda::TransparentType>& rhs) const {
    return equal_to<tda::TransparentType*>()(lhs.get(), rhs.get());
  }
};

} // namespace std
