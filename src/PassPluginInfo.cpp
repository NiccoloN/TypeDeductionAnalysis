#include "TypeDeductionAnalysis.hpp"

#include <llvm/IR/PassManager.h>
#include <llvm/Passes/PassBuilder.h>
#if LLVM_VERSION_MAJOR >= 22
#include "llvm/Plugins/PassPlugin.h"
#else
#include "llvm/Passes/PassPlugin.h"
#endif

namespace tda {

// Tiny driver transform pass that just runs the analysis once
struct TDARunnerPass : llvm::PassInfoMixin<TDARunnerPass> {
  llvm::PreservedAnalyses run(llvm::Module& M, llvm::ModuleAnalysisManager& MAM) {
    (void) MAM.getResult<TypeDeductionAnalysis>(M);
    return llvm::PreservedAnalyses::all();
  }
};

extern "C" LLVM_ATTRIBUTE_WEAK llvm::PassPluginLibraryInfo llvmGetPassPluginInfo() {
  return {LLVM_PLUGIN_API_VERSION, "TypeDeductionAnalysis", "1.0", [](llvm::PassBuilder& passBuilder) {
            passBuilder.registerAnalysisRegistrationCallback([](llvm::ModuleAnalysisManager& moduleAnalysisManager) {
              moduleAnalysisManager.registerPass([&] { return TypeDeductionAnalysis(); });
            });

            passBuilder.registerPipelineParsingCallback([](llvm::StringRef name,
                                                           llvm::ModulePassManager& modulePassManager,
                                                           llvm::ArrayRef<llvm::PassBuilder::PipelineElement>) {
              if (name == "tda") {
                modulePassManager.addPass(TDARunnerPass());
                return true;
              }
              return false;
            });
          }};
}

} // namespace tda
