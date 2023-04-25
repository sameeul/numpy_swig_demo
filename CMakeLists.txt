cmake_minimum_required(VERSION 3.0)

project(testlib)

set(CMAKE_CXX_STANDARD 11)

find_package(Python REQUIRED COMPONENTS Interpreter Development NumPy)
find_package(SWIG REQUIRED)

include(${SWIG_USE_FILE})
include_directories(${PYTHON_INCLUDE_DIRS})
include_directories(${CMAKE_SOURCE_DIR})

set_source_files_properties(testlib.i PROPERTIES CPLUSPLUS ON)

swig_add_library(testlib TYPE SHARED LANGUAGE python SOURCES testlib.i testlib.cpp)

target_link_libraries(_testlib ${PYTHON_LIBRARIES} Python::NumPy)
