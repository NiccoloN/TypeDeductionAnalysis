#include "AnalysisWorker.hpp"
#include "Debug/Logger.hpp"
#include "TDAInfo/TypeDeductionAnalysisInfo.hpp"
#include "TransparentType.hpp"
#include "TypeDeductionAnalysis.hpp"
#include "TypeDispatcher.hpp"

#include <llvm/IR/Module.h>
#include <llvm/IR/PassManager.h>

#include <utility>

namespace tda {

Result::Result(llvm::Module* llvmModule, llvm::DenseMap<llvm::Value*, TypeAliasSet>&& types)
: module(llvmModule), transparentTypes(std::move(types)) {}

Result::Result(Result&& other)
: module(other.module), transparentTypes(std::move(other.transparentTypes)) {}

Result& Result::operator=(Result&& other) = default;

Result::~Result() = default;

llvm::AnalysisKey TypeDeductionAnalysis::Key;

Result TypeDeductionAnalysis::run(llvm::Module& llvmModule, llvm::ModuleAnalysisManager&) {
  TypeDeductionAnalysisInfo::getInstance().initialize(llvmModule);

  TypeDispatcher& dispatcher = TypeDispatcher::getInstance();
  if (!dispatcher.isRegistered(llvmModule))
    dispatcher.registerModule(llvmModule);

  Logger& logger = log();
  AnalysisWorker worker(llvmModule, logger);
  auto transparentTypes = worker.run();

  Result result(&llvmModule, std::move(transparentTypes));
  return result;
}

} // namespace tda
