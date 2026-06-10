#pragma once

#include <llvm/ADT/ArrayRef.h>
#include <llvm/ADT/DenseMap.h>
#include <llvm/ADT/FoldingSet.h>
#include <llvm/ADT/SmallSet.h>
#include <llvm/ADT/iterator_range.h>
#include <llvm/IR/DataLayout.h>
#include <llvm/IR/Instruction.h>
#include <llvm/IR/LLVMContext.h>
#include <llvm/IR/Metadata.h>
#include <llvm/IR/Module.h>
#include <llvm/IR/Type.h>
#include <llvm/IR/Use.h>
#include <llvm/IR/Value.h>
#include <llvm/Support/Allocator.h>

#include <optional>
#include <utility>
#include <vector>

namespace tda {

class TransparentType;
class TransparentPointerType;
class TransparentArrayType;
class TransparentStructType;

struct DispatcherContext {
  const llvm::DataLayout* dataLayout;
  llvm::BumpPtrAllocator allocator;
  std::vector<const TransparentType*> registry;
  const TransparentType* unionType = nullptr;
  llvm::DenseMap<const llvm::Type*, const TransparentType*> primitiveTypes;
  llvm::DenseMap<const TransparentType*, const TransparentPointerType*> pointerTypes;
  llvm::FoldingSet<TransparentArrayType> arrayTypes;
  llvm::FoldingSet<TransparentStructType> structTypes;

  DispatcherContext();
  DispatcherContext(const DispatcherContext&) = delete;
  DispatcherContext(DispatcherContext&&);
  DispatcherContext& operator=(const DispatcherContext&) = delete;
  DispatcherContext& operator=(DispatcherContext&&);
  ~DispatcherContext();
};

class TypeDispatcher {
public:
  static TypeDispatcher& getInstance();

  TypeDispatcher(const TypeDispatcher&) = delete;
  TypeDispatcher(TypeDispatcher&&) = delete;
  TypeDispatcher& operator=(const TypeDispatcher&) = delete;
  TypeDispatcher& operator=(TypeDispatcher&&) = delete;

  void registerModule(llvm::Module& llvmModule);
  void unregisterModule(llvm::Module& llvmModule);
  bool isRegistered(llvm::Module& llvmModule);

  DispatcherContext& getDispatcherContext(llvm::LLVMContext* llvmContext);

  const TransparentType*
  getOrCreatePrimitiveType(llvm::LLVMContext* llvmContext, const llvm::Type* primitiveType, const bool isUnion = false);
  const TransparentPointerType* getOrCreatePointerType(llvm::LLVMContext* llvmContext,
                                                       const TransparentType* pointedType,
                                                       const unsigned indirections = 1);
  const TransparentArrayType* getOrCreateArrayType(llvm::LLVMContext* llvmContext,
                                                   const TransparentType* elementType,
                                                   const llvm::Type* llvmType = nullptr);
  const TransparentStructType* getOrCreateStructType(llvm::LLVMContext* llvmContext,
                                                     const llvm::ArrayRef<const TransparentType*> fieldTypes,
                                                     const llvm::Type* llvmType = nullptr,
                                                     llvm::ArrayRef<unsigned> fieldOffsets = {},
                                                     llvm::ArrayRef<unsigned> fieldSizes = {},
                                                     llvm::SmallSet<unsigned, 8> paddingFields = {});
  const TransparentType* getOrCreateFromLLVMType(const llvm::Type* llvmType, const unsigned indirections = 0);
  const TransparentType* getOrCreateFromValue(const llvm::Value* value);
  const std::pair<const TransparentType*, const TransparentType*>
  getOrCreateFromLoadStoreMetaData(const llvm::Instruction* inst);
  const TransparentType*
  getOrCreateFromIndexedType(const TransparentType* ptrOperandType,
                             const TransparentType* gepSrcElemType,
                             std::optional<llvm::iterator_range<const llvm::Use*>> gepIndices = std::nullopt,
                             std::optional<const TransparentType*> setType = std::nullopt);
  const TransparentType* getOrCreateFromMergeWithPrimitiveType(const TransparentType* primitiveType,
                                                               const TransparentType* otherType);
  const TransparentType* getOrCreateFromMergeWithPointerType(const TransparentPointerType* pointerType,
                                                             const TransparentType* otherType);
  const TransparentType* getOrCreateFromMergeWithArrayType(const TransparentArrayType* arrayType,
                                                           const TransparentType* otherType);
  const TransparentType* getOrCreateFromMergeWithStructType(const TransparentStructType* structType,
                                                            const TransparentType* otherType);
  const TransparentType* getOrCreateMergedType(const TransparentType* type1, const TransparentType* type2);

private:
  llvm::DenseMap<llvm::LLVMContext*, DispatcherContext> contexts;

  explicit TypeDispatcher();
  ~TypeDispatcher();

  template <typename T, typename... Args>
  T* createType(llvm::LLVMContext* llvmContext, Args&&... args) {
    DispatcherContext& dispatcherContext = getDispatcherContext(llvmContext);

    void* storage = dispatcherContext.allocator.Allocate<T>();
    T* instance = new (storage) T(llvmContext, std::forward<Args>(args)...);
    dispatcherContext.registry.push_back(instance);

    return instance;
  }

  const TransparentType*
  createFromPrimitiveType(llvm::LLVMContext* llvmContext, const llvm::Type* primitiveType, const bool isUnion);
  const TransparentPointerType* createFromPointedType(llvm::LLVMContext* llvmContext,
                                                      const TransparentType* pointedType,
                                                      const unsigned indirections = 1);
  TransparentArrayType* createFromElementType(llvm::LLVMContext* llvmContext,
                                              const TransparentType* elementType,
                                              const llvm::Type* llvmType,
                                              void* insertPos);
  TransparentStructType* createFromFieldTypes(llvm::LLVMContext* llvmContext,
                                              const llvm::ArrayRef<const TransparentType*> fieldTypes,
                                              const llvm::Type* llvmType,
                                              llvm::ArrayRef<unsigned> fieldOffsets,
                                              llvm::ArrayRef<unsigned> fieldSizes,
                                              llvm::SmallSet<unsigned, 8> paddingFields,
                                              void* insertPos);

  const TransparentType* getOrCreateFromIndexedTypeRecursive(const TransparentType* currentType,
                                                             const TransparentType* gepSrcElemType,
                                                             const llvm::ArrayRef<const llvm::Value*> gepIndices,
                                                             const unsigned currentGepIndex);
  const TransparentType* getOrCreateFromIndexedTypeRecursive(const TransparentType* currentType,
                                                             const TransparentType* gepSrcElemType,
                                                             const llvm::ArrayRef<const llvm::Value*> gepIndices,
                                                             const unsigned currentGepIndex,
                                                             const TransparentType* setType);
};

} // namespace tda
