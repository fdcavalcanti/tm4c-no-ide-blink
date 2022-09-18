set(CMAKE_SYSTEM_NAME           Generic)
set(CMAKE_SYSTEM_PROCESSOR      arm)

set (CMAKE_TRY_COMPILE_TARGET_TYPE   STATIC_LIBRARY)

set (HOME_DIR $ENV{HOME})
set (BAREMETAL_ARM_TOOLCHAIN_PATH "${HOME_DIR}/gcc-arm-none-eabi-10.3-2021.10/bin/")
set (CROSS_COMPILE arm-none-eabi-)
set (CMAKE_C_COMPILER            "${BAREMETAL_ARM_TOOLCHAIN_PATH}${CROSS_COMPILE}gcc")
set (CMAKE_CXX_COMPILER          "${BAREMETAL_ARM_TOOLCHAIN_PATH}${CROSS_COMPILE}g++")
set (CMAKE_LINKER                "${BAREMETAL_ARM_TOOLCHAIN_PATH}${CROSS_COMPILE}ld")
set (CMAKE_AR                    "${BAREMETAL_ARM_TOOLCHAIN_PATH}${CROSS_COMPILE}ar")
set (CMAKE_OBJCOPY               "${BAREMETAL_ARM_TOOLCHAIN_PATH}${CROSS_COMPILE}objcopy")

set (CMAKE_FIND_ROOT_PATH_MODE_PROGRAM NEVER)
set (CMAKE_FIND_ROOT_PATH_MODE_LIBRARY ONLY)
set (CMAKE_FIND_ROOT_PATH_MODE_INCLUDE ONLY)
set (CMAKE_FIND_ROOT_PATH_MODE_PACKAGE ONLY)

set (CMAKE_C_FLAGS "")
set (CMAKE_CXX_FLAGS "")

set (CMAKE_C_FLAGS               "${CMAKE_C_FLAGS} -mcpu=cortex-m4")
set (CMAKE_C_FLAGS               "${CMAKE_C_FLAGS} -mfloat-abi=hard")
set (CMAKE_C_FLAGS               "${CMAKE_C_FLAGS} -mfpu=fpv4-sp-d16")
set (CMAKE_C_FLAGS               "${CMAKE_C_FLAGS} -march=armv7e-m+fp")
set (CMAKE_C_FLAGS               "${CMAKE_C_FLAGS} -mthumb")
set (CMAKE_C_FLAGS               "${CMAKE_C_FLAGS} -DPART_TM4C1294NCPDT")
set (CMAKE_C_FLAGS               "${CMAKE_C_FLAGS} --specs=nosys.specs")
