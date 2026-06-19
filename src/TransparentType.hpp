#pragma once

#include "Utils/PrintUtils.hpp"

#include "llvm/IR/LLVMContext.h"
#include "llvm/IR/Use.h"
#include <llvm/ADT/ArrayRef.h>
#include <llvm/ADT/FoldingSet.h>
#include <llvm/ADT/SmallPtrSet.h>
#include <llvm/ADT/SmallSet.h>
#include <llvm/ADT/SmallVector.h>
#include <llvm/IR/DerivedTypes.h>
#include <llvm/IR/Instruction.h>
#include <llvm/IR/LLVMContext.h>
#include <llvm/IR/Type.h>
#include <llvm/IR/Value.h>

#include <optional>
#include <string>
#include <utility>

namespace tda {

class TypeDispatcher;

class TransparentType : public Printable {
  friend TypeDispatcher;

public:
  enum TransparentTypeKind {
    K_Primitive,
    K_Pointer,
    K_Array,
    K_Struct
  };

  static const TransparentType*
  get(llvm::LLVMContext* llvmContext, const llvm::Type* primitiveType, const bool isUnion = false);
  static const TransparentType* get(const llvm::Type* llvmType, const unsigned indirections = 0);
  static const TransparentType* get(const llvm::Value* value);
  static const std::pair<const TransparentType*, const TransparentType*> get(const llvm::Instruction* inst);

  static bool classof(const TransparentType* type);

  TransparentType() = delete;
  TransparentType& operator=(const TransparentType&) = delete;
  TransparentType& operator=(TransparentType&&) = delete;
  virtual ~TransparentType();

  virtual bool operator==(const TransparentType& otherType) const;
  bool operator!=(const TransparentType& otherType) const;

  virtual TransparentTypeKind getKind() const;

  const llvm::Type* getLLVMType() const;
  const llvm::Type* toLLVMType() const;
  llvm::LLVMContext* getLLVMContext() const;
  virtual llvm::SmallPtrSet<const llvm::Type*, 8> getContainedLLVMTypes() const;
  virtual bool isCompatibleLLVMType(const llvm::Type* llvmType) const;

  virtual const TransparentType* getFullyUnwrappedType() const;
  virtual const TransparentType* getPointedType() const;
  virtual const TransparentType* getFirstNonPtr() const;

  virtual bool isOpaquePtr() const;
  virtual bool containsOpaquePtr() const;

  bool isPlaceholder() const;
  bool containsPlaceholder() const;
  bool isUnion() const;
  bool isPrimitiveTT() const;
  bool isPointerTT() const;
  bool isArrayTT() const;
  bool isStructTT() const;
  virtual bool isPrimitiveTTOrPtrTo() const;
  virtual bool isArrayTTOrPtrTo() const;
  virtual bool isStructTTOrPtrTo() const;
  bool isVoidTy() const;
  virtual bool isByteTyOrPtrTo() const;
  virtual bool isIntegerTyOrPtrTo() const;
  virtual bool isFloatingPointTyOrPtrTo() const;
  virtual bool containsFloatingPointType() const;

  const TransparentType* findGepSrcElementType(const TransparentType* type) const;

  bool isStructurallyEquivalent(const TransparentType* otherType) const;
  virtual bool isCompatibleWith(const TransparentType* otherType) const;

  const TransparentType*
  getOrSetIndexedType(const TransparentType* gepSrcElemType,
                      std::optional<llvm::iterator_range<const llvm::Use*>> gepIndices = std::nullopt,
                      std::optional<const TransparentType*> setType = std::nullopt) const;

  virtual const TransparentType* mergeWith(const TransparentType* otherType) const;

  virtual std::string toString() const override;

protected:
  llvm::LLVMContext* llvmContext = nullptr;
  const llvm::Type* const llvmType = nullptr;
  const bool isAUnion = false;

  TransparentType(llvm::LLVMContext* llvmContext, const llvm::Type* const llvmType, const bool isUnion = false);
  TransparentType(const TransparentType&);
  TransparentType(TransparentType&&);
};

class TransparentPointerType : public TransparentType {
  friend TypeDispatcher;

public:
  static const TransparentPointerType*
  get(llvm::LLVMContext* llvmContext, const TransparentType* pointedType, const unsigned indirections = 1);

  static bool classof(const TransparentType* type);

  TransparentPointerType() = delete;
  TransparentPointerType& operator=(const TransparentPointerType&) = delete;
  TransparentPointerType& operator=(TransparentPointerType&&) = delete;
  ~TransparentPointerType() override;

  bool operator==(const TransparentType& otherType) const override;

  TransparentTypeKind getKind() const override;

  llvm::SmallPtrSet<const llvm::Type*, 8> getContainedLLVMTypes() const override;
  bool isCompatibleLLVMType(const llvm::Type* llvmType) const override;

  const TransparentType* getFullyUnwrappedType() const override;
  const TransparentType* getPointedType() const override;
  const TransparentType* getFirstNonPtr() const override;

  bool isOpaquePtr() const override;
  bool containsOpaquePtr() const override;
  bool isPrimitiveTTOrPtrTo() const override;
  bool isArrayTTOrPtrTo() const override;
  bool isStructTTOrPtrTo() const override;
  bool isByteTyOrPtrTo() const override;
  bool isIntegerTyOrPtrTo() const override;
  bool isFloatingPointTyOrPtrTo() const override;
  bool containsFloatingPointType() const override;

  bool isCompatibleWith(const TransparentType* otherType) const override;

  const TransparentPointerType* setPointedType(const TransparentType* pointedType) const;

  const TransparentType* mergeWith(const TransparentType* otherType) const override;

  std::string toString() const override;

protected:
  const TransparentType* const pointedType;

  TransparentPointerType(llvm::LLVMContext* llvmContext,
                         const llvm::PointerType* llvmType,
                         const TransparentType* const pointedType = nullptr);
  TransparentPointerType(const TransparentPointerType&);
  TransparentPointerType(TransparentPointerType&&);
};

class TransparentArrayType : public TransparentType,
                             public llvm::FoldingSetNode {
  friend TypeDispatcher;

public:
  static const TransparentArrayType*
  get(llvm::LLVMContext* llvmContext, const TransparentType* elementType, const llvm::Type* llvmType = nullptr);

  static bool classof(const TransparentType* type);

  static void Profile(llvm::FoldingSetNodeID& ID, const llvm::Type* llvmType, const TransparentType* elementType);

  TransparentArrayType() = delete;
  TransparentArrayType& operator=(const TransparentArrayType&) = delete;
  TransparentArrayType& operator=(TransparentArrayType&&) = delete;
  ~TransparentArrayType() override;

  bool operator==(const TransparentType& otherType) const override;

  TransparentTypeKind getKind() const override;

  llvm::SmallPtrSet<const llvm::Type*, 8> getContainedLLVMTypes() const override;
  bool isCompatibleLLVMType(const llvm::Type* llvmType) const override;

  const TransparentType* getFullyUnwrappedType() const override;
  const TransparentType* getElementType() const;
  unsigned getNumElements() const;

  bool containsOpaquePtr() const override;
  bool containsFloatingPointType() const override;

  bool isCompatibleWith(const TransparentType* otherType) const override;

  const TransparentArrayType* setElementType(const TransparentType* elementType) const;

  const TransparentType* mergeWith(const TransparentType* otherType) const override;

  void Profile(llvm::FoldingSetNodeID& ID) const;

  std::string toString() const override;

protected:
  const TransparentType* const elementType;

  TransparentArrayType(llvm::LLVMContext* llvmContext,
                       const llvm::ArrayType* const llvmType,
                       const TransparentType* const elementType = nullptr);
  TransparentArrayType(llvm::LLVMContext* llvmContext,
                       const llvm::VectorType* const llvmType,
                       const TransparentType* const elementType = nullptr);
  TransparentArrayType(llvm::LLVMContext* llvmContext, const TransparentType* const elementType = nullptr);
  TransparentArrayType(const TransparentArrayType&);
  TransparentArrayType(TransparentArrayType&&);
};

class TransparentStructType : public TransparentType,
                              public llvm::FoldingSetNode {
  friend TypeDispatcher;

public:
  static const TransparentStructType* get(llvm::LLVMContext* llvmContext,
                                          const llvm::ArrayRef<const TransparentType*> fieldTypes,
                                          const llvm::Type* llvmType = nullptr,
                                          llvm::ArrayRef<unsigned> fieldOffsets = {},
                                          llvm::ArrayRef<unsigned> fieldSizes = {},
                                          llvm::SmallSet<unsigned, 8> paddingFields = {});

  static bool classof(const TransparentType* type);

  static void Profile(llvm::FoldingSetNodeID& ID,
                      const llvm::Type* llvmType,
                      const llvm::ArrayRef<const TransparentType*> fieldTypes);

  TransparentStructType() = delete;
  TransparentStructType& operator=(const TransparentStructType&) = delete;
  TransparentStructType& operator=(TransparentStructType&&) = delete;
  ~TransparentStructType() override;

  bool operator==(const TransparentType& otherType) const override;

  TransparentTypeKind getKind() const override;

  llvm::SmallPtrSet<const llvm::Type*, 8> getContainedLLVMTypes() const override;
  bool isCompatibleLLVMType(const llvm::Type* llvmType) const override;

  unsigned getNumFieldTypes() const;
  const llvm::ArrayRef<const TransparentType*> getFieldTypes() const;
  const TransparentType* getFieldType(const unsigned i) const;
  unsigned getFieldOffset(const unsigned i) const;
  unsigned getFieldSize(const unsigned i) const;
  unsigned getNumPaddingFields() const;
  const llvm::SmallSet<unsigned, 8>& getPaddingFields() const;
  bool isFieldPadding(const unsigned i) const;

  bool containsOpaquePtr() const override;
  bool containsFloatingPointType() const override;

  bool isCompatibleWith(const TransparentType* otherType) const override;

  const TransparentStructType* setFieldType(const unsigned i, const TransparentType* fieldType) const;

  const TransparentType* mergeWith(const TransparentType* otherType) const override;

  void Profile(llvm::FoldingSetNodeID& ID) const;

  std::string toString() const override;

protected:
  const llvm::SmallVector<const TransparentType*, 8> fieldTypes;
  const llvm::SmallVector<unsigned> fieldOffsets;
  const llvm::SmallVector<unsigned> fieldSizes;
  const llvm::SmallSet<unsigned, 8> paddingFields;

  TransparentStructType(llvm::LLVMContext* llvmContext,
                        const llvm::StructType* const llvmType,
                        const llvm::ArrayRef<const TransparentType*> fieldTypes = {},
                        const llvm::ArrayRef<unsigned> fieldOffsets = {},
                        const llvm::ArrayRef<unsigned> fieldSizes = {},
                        const llvm::SmallSet<unsigned, 8> paddingFields = {});
  TransparentStructType(const TransparentStructType&);
  TransparentStructType(TransparentStructType&&);
};

} // namespace tda
