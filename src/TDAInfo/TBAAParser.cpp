#include "TBAAParser.hpp"
#include "TransparentType.hpp"
#include "TypeDispatcher.hpp"

#include "llvm/IR/Instructions.h"
#include <llvm/ADT/SmallVector.h>
#include <llvm/IR/DataLayout.h>
#include <llvm/IR/LLVMContext.h>
#include <llvm/IR/Metadata.h>
#include <llvm/IR/Operator.h>

#include <utility>

namespace tda {

const std::pair<const TransparentType*, const TransparentType*>
TBAAParser::getOrCreateFromLoadStoreMetaData(const llvm::Instruction* inst) {
  const llvm::MDNode* mdNode = inst->getMetadata(llvm::LLVMContext::MD_tbaa);
  if (!mdNode)
    return {nullptr, nullptr};

  const auto* baseTypeMd = cast<llvm::MDNode>(mdNode->getOperand(0));
  if (!isStructTypeDescriptor(baseTypeMd))
    return {nullptr, nullptr};

  const auto* accessTypeMd = cast<llvm::MDNode>(mdNode->getOperand(1));
  unsigned accessOffset = llvm::mdconst::extract_or_null<llvm::ConstantInt>(mdNode->getOperand(2))->getZExtValue();
  return getPlaceholderStructTypes(baseTypeMd, accessTypeMd, accessOffset);
}

bool TBAAParser::isStructTypeDescriptor(const llvm::MDNode* mdNode) { return mdNode->getNumOperands() >= 6; }

const std::pair<const TransparentType*, const TransparentType*> TBAAParser::getPlaceholderStructTypes(
  const llvm::MDNode* structTypeMd, const llvm::MDNode* accessTypeMd, const unsigned accessOffset) {
  llvm::LLVMContext* llvmContext = &structTypeMd->getContext();
  const unsigned numFields = structTypeMd->getNumOperands() / 3 - 1;
  const TransparentType* accessedType = nullptr;
  llvm::SmallVector<const TransparentType*, 8> fieldTypes;
  llvm::SmallVector<unsigned> fieldOffsets;
  llvm::SmallVector<unsigned> fieldSizes;

  bool foundAccess = false;
  fieldTypes.reserve(numFields);
  fieldOffsets.reserve(numFields);
  fieldSizes.reserve(numFields);
  for (unsigned i = 0; i < numFields; ++i) {
    const auto* fieldTypeMd = cast<llvm::MDNode>(structTypeMd->getOperand(3 + i * 3));

    unsigned fieldOffset =
      llvm::mdconst::extract<llvm::ConstantInt>(structTypeMd->getOperand(3 + i * 3 + 1))->getZExtValue();
    fieldOffsets.push_back(fieldOffset);

    unsigned fieldSize =
      llvm::mdconst::extract<llvm::ConstantInt>(structTypeMd->getOperand(3 + i * 3 + 2))->getZExtValue();
    fieldSizes.push_back(fieldSize);

    unsigned nextFieldOffset = 0;
    bool isLastField = (numFields == i + 1);
    if (!isLastField)
      nextFieldOffset =
        llvm::mdconst::extract<llvm::ConstantInt>(structTypeMd->getOperand(3 + (i + 1) * 3 + 1))->getZExtValue();

    foundAccess = (!foundAccess && isLastField) || (accessOffset >= fieldOffset && accessOffset < nextFieldOffset);

    if (isStructTypeDescriptor(fieldTypeMd)) {
      const auto [fieldType, accessedTypeInField] =
        getPlaceholderStructTypes(fieldTypeMd, accessTypeMd, accessOffset - fieldOffset);

      if (foundAccess)
        accessedType = (accessTypeMd == fieldTypeMd) ? fieldType : accessedTypeInField;

      fieldTypes.push_back(fieldType);
    }
    else
      fieldTypes.push_back(TransparentType::get(llvmContext, nullptr));
  }

  const TransparentStructType* structType =
    TransparentStructType::get(llvmContext, fieldTypes, nullptr, fieldOffsets, fieldSizes);
  return {TransparentPointerType::get(llvmContext, structType), accessedType};
}

} // namespace tda
