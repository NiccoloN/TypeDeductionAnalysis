add_llvm_library(TypeDeductionAnalysis STATIC
  src/Containers/InsertionOrderedMap.hpp
  src/Debug/Logger.hpp
  src/Debug/Logger.cpp
  src/Utils/PrintUtils.hpp
  src/Utils/PtrCasts.hpp
  src/StructPaddingInfo.hpp
  src/StructPaddingInfo.cpp
  src/TransparentType.hpp
  src/TransparentType.cpp
  src/TypeDeductionAnalysis.hpp
  src/TypeDeductionAnalysis.cpp
  src/TypeDeductionAnalysisInfo.hpp
  src/TypeDeductionAnalysisInfo.cpp
)
target_include_directories(TypeDeductionAnalysis PUBLIC ${CMAKE_CURRENT_SOURCE_DIR}/src)
set_property(TARGET TypeDeductionAnalysis PROPERTY POSITION_INDEPENDENT_CODE ON)

add_llvm_library(TypeDeductionAnalysisPlugin MODULE
  src/PassPluginInfo.cpp
  PLUGIN_TOOL opt
)
target_link_libraries(TypeDeductionAnalysisPlugin PRIVATE
  TypeDeductionAnalysis
)
