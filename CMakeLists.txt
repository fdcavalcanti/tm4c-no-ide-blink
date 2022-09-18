cmake_minimum_required(VERSION 3.10)
set (CMAKE_TOOLCHAIN_FILE          "toolchain_ext.cmake")
project(tm4cblink)

# Project specifics
set (CMAKE_C_FLAGS                   "${CMAKE_C_FLAGS} --entry ResetISR")
set (CMAKE_EXE_LINKER_FLAGS          "-T ${CMAKE_SOURCE_DIR}/tm4c1294ncpdt.lds")

# File paths
set (TIVAWARE_DIR ${PROJECT_SOURCE_DIR}/TivaWare)
file (GLOB cfiles ${PROJECT_SOURCE_DIR}/src/*.c)

# Executable
add_executable(tm4cblink ${cfiles})
set_target_properties (tm4cblink PROPERTIES SUFFIX ".elf")

# Linking
find_library (tivaware driver HINTS ${TIVAWARE_DIR}/driverlib/gcc)
target_link_libraries (tm4cblink ${tivaware})

target_include_directories (tm4cblink PUBLIC ${TIVAWARE_DIR})
