#include "Debug/Logger.hpp"
#include "TBAAParser.hpp"

#include <llvm/IR/DataLayout.h>
#include <llvm/IR/Module.h>
#include <llvm/IR/Operator.h>

#include <algorithm>

using namespace llvm;
using namespace tda;

std::pair<std::unique_ptr<TransparentType>, std::unique_ptr<TransparentType>>
TBAAParser::getLoadStoreTypesFromTbaa(const Instruction* inst) {
  assert(isa<LoadInst>(inst) || isa<StoreInst>(inst));
  const MDNode* mdNode = inst->getMetadata(LLVMContext::MD_tbaa);
  if (!mdNode)
    return {nullptr, nullptr};
  auto* baseTypeMd = cast<MDNode>(mdNode->getOperand(0));
  auto* accessTypeMd = cast<MDNode>(mdNode->getOperand(1));
  unsigned accessOffset = mdconst::extract_or_null<ConstantInt>(mdNode->getOperand(2))->getZExtValue();
  if (!isStructTypeDescriptor(baseTypeMd))
    return {nullptr, nullptr};
  return getPlaceholderStructTypes(baseTypeMd, accessTypeMd, accessOffset);
}

std::pair<std::unique_ptr<TransparentType>, std::unique_ptr<TransparentType>>
TBAAParser::getPlaceholderStructTypes(const MDNode* structTypeMd, const MDNode* accessTypeMd, unsigned accessOffset) {
  unsigned numFields = structTypeMd->getNumOperands() / 3 - 1;
  std::unique_ptr<TransparentType> accessedType = nullptr;
  SmallVector<std::unique_ptr<TransparentType>> fieldTypes;
  SmallVector<unsigned> fieldOffsets;
  SmallVector<unsigned> fieldSizes;
  fieldTypes.reserve(numFields);
  bool foundAccess = false;
  for (unsigned i = 0; i < numFields; i++) {
    auto* fieldTypeMd = cast<MDNode>(structTypeMd->getOperand(3 + i * 3));
    unsigned fieldOffset = mdconst::extract<ConstantInt>(structTypeMd->getOperand(3 + i * 3 + 1))->getZExtValue();
    unsigned fieldSize = mdconst::extract<ConstantInt>(structTypeMd->getOperand(3 + i * 3 + 2))->getZExtValue();

    fieldOffsets.push_back(fieldOffset);
    fieldSizes.push_back(fieldSize);

    unsigned nextFieldOffset = 0;
    bool isLastField = i + 1 == numFields;
    if (!isLastField)
      nextFieldOffset = mdconst::extract<ConstantInt>(structTypeMd->getOperand(3 + (i + 1) * 3 + 1))->getZExtValue();
    foundAccess = (!foundAccess && isLastField) || (accessOffset >= fieldOffset && accessOffset < nextFieldOffset);

    if (isStructTypeDescriptor(fieldTypeMd)) {
      auto [fieldType, accessedTypeInField] =
        getPlaceholderStructTypes(fieldTypeMd, accessTypeMd, accessOffset - fieldOffset);
      if (foundAccess)
        accessedType = accessTypeMd == fieldTypeMd ? fieldType->clone() : std::move(accessedTypeInField);
      fieldTypes.push_back(std::move(fieldType));
    }
    else
      fieldTypes.push_back(TransparentTypeFactory::create(nullptr, 0));
  }
  return {TransparentTypeFactory::create(fieldTypes, fieldOffsets, fieldSizes, 1), std::move(accessedType)};
}

std::unordered_map<StructType*, StructPaddingInfo> TBAAParser::getStructPaddingInfo(Module& module) {
  std::unordered_map<StructType*, StructPaddingInfo> structPaddingInfo;
  const DataLayout& dataLayout = module.getDataLayout();
  // TODO
  return structPaddingInfo;
}

bool TBAAParser::isStructTypeDescriptor(const MDNode* mdNode) { return mdNode->getNumOperands() >= 6; }

/*
bool TBAAParser::isTypeDescriptor(const MDNode* mdNode) {
  if (!mdNode || mdNode->getNumOperands() == 0)
    return false;
  return isa<MDString>(mdNode->getOperand(0));
}

std::optional<TBAAParser::TbaaAccessTag> TBAAParser::getTbaa(const Instruction* inst) {
  if (mdNode->getNumOperands() >= 3) {
    tbaa.baseType = dyn_cast<MDNode>(mdNode->getOperand(0));
    tbaa.accessType = dyn_cast<MDNode>(mdNode->getOperand(1));
    if (auto* CI = dyn_cast<ConstantInt>(mdNode->getOperand(2)))
      tbaa.offset = CI->getZExtValue();
    tbaa.isImmutable = isOperandConstOne(mdNode, 3);
  }
  else {
    // No offset concept here; treat as offset 0 on unknown base.
    tbaa.baseType = mdNode;
    tbaa.accessType = mdNode;
    tbaa.offset = 0;
    tbaa.isImmutable = isOperandConstOne(mdNode, 2);
  }
  return tbaa;
}

TBAAParser::TbaaStructTypeDescriptor TBAAParser::parseStructTypeDescriptor(const MDNode* mdNode) {
  TbaaStructTypeDescriptor tbaaStruct;
  tbaaStruct.node = mdNode;
  if (!isStructTypeDescriptor(mdNode))
    return tbaaStruct;

  tbaaStruct.name = cast<MDString>(mdNode->getOperand(0))->getString().str();

  // Collect fields from (typeMD, offset) pairs
  const unsigned n = mdNode->getNumOperands();
  for (unsigned i = 1; i + 1 < n; i += 2) {
    auto* fieldType = dyn_cast<MDNode>(mdNode->getOperand(i));
    auto* offCI = mdconst::extract_or_null<ConstantInt>(mdNode->getOperand(i + 1));
    if (!fieldType || !offCI)
      continue;
    uint64_t off = offCI->getZExtValue();
    // Size is unknown from the type descriptor; set 0 for now (or compute diff to next offset)
    tbaaStruct.fields.emplace_back(off, size=0, tag=fieldType);
  }

  // Best-effort size: last offset + (diff to next not known). Leave 0; you can
  // fill using DataLayout + a mapped StructType if you have it.
  return tbaaStruct;
}

std::vector<TBAAParser::TbaaScalarTypeDescriptor> TBAAParser::getStructTbaa(const MDNode* mdNode) {
  std::vector<TbaaScalarTypeDescriptor> tbaa;
  if (!mdNode)
    return tbaa;
  // Triples: i64 offset, i64 size, !tbaa_tag
  const unsigned N = mdNode->getNumOperands();
  if (N % 3 != 0)
    return tbaa;

  for (unsigned i = 0; i + 2 < N; i += 3) {
    auto* off = mdconst::extract_or_null<ConstantInt>(mdNode->getOperand(i + 0));
    auto* siz = mdconst::extract_or_null<ConstantInt>(mdNode->getOperand(i + 1));
    auto* tag = dyn_cast_or_null<MDNode>(mdNode->getOperand(i + 2));
    if (!off || !siz)
      continue;
    tbaa.push_back(TbaaScalarTypeDescriptor {off->getZExtValue(), siz->getZExtValue(), tag});
  }

  // Sort by offset, just in case
  std::sort(tbaa.begin(), tbaa.end(), [](auto& a, auto& b) { return a.offset < b.offset; });
  return tbaa;
}

std::vector<TBAAParser::TbaaScalarTypeDescriptor> TBAAParser::getStructTbaa(const CallBase& call) {
  const MDNode* mdNode = call.getMetadata(LLVMContext::MD_tbaa_struct);
  if (!mdNode)
    return {};
  return getStructTbaa(mdNode);
}
*/
