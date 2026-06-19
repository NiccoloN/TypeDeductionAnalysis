#pragma once

#include <llvm/IR/Instruction.h>
#include <llvm/IR/Metadata.h>

#include <utility>

namespace tda {

class TransparentType;
class TypeDispatcher;

class TBAAParser {
public:
  static const std::pair<const TransparentType*, const TransparentType*>
  getOrCreateFromLoadStoreMetaData(const llvm::Instruction* inst);

private:
  static bool isStructTypeDescriptor(const llvm::MDNode* mdNode);

  static const std::pair<const TransparentType*, const TransparentType*> getPlaceholderStructTypes(
    const llvm::MDNode* structTypeMd, const llvm::MDNode* accessTypeMd, const unsigned accessOffset);
};

} // namespace tda
