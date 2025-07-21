set(SELF TypeDeductionAnalysis)

add_llvm_library(${SELF} OBJECT BUILDTREE_ONLY
  Containers/InsertionOrderedMap.hpp
  Debug/Logger.hpp
  Debug/Logger.cpp
  Utils/PrintUtils.hpp
  Utils/PtrCasts.hpp
  StructPaddingInfo.hpp
  StructPaddingInfo.cpp
  TransparentType.hpp
  TransparentType.cpp
  TypeDeductionAnalysis.hpp
  TypeDeductionAnalysis.cpp
  TypeDeductionAnalysisInfo.hpp
  TypeDeductionAnalysisInfo.cpp
)
target_include_directories(${SELF} PUBLIC ${CMAKE_CURRENT_SOURCE_DIR})
set_property(TARGET ${SELF} PROPERTY POSITION_INDEPENDENT_CODE ON)
