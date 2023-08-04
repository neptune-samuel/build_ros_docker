set(CMAKE_SYSTEM_VERSION 1)
set(CMAKE_SYSTEM_PROCESSOR aarch64)

set(SYSROOT_PATH  /opt/nano/rootfs)
set(CMAKE_SYSROOT "${SYSROOT_PATH}")
message(STATUS  "Using sysroot path as ${SYSROOT_PATH}")

set(TOOLCHAIN_PATH /opt/toolchains/gcc-linaro-7.5.0-2019.12-x86_64_aarch64-linux-gnu)
set(TOOLCHAIN_HOST ${TOOLCHAIN_PATH}/bin/aarch64-linux-gnu)

set(TOOLCHAIN_CC "${TOOLCHAIN_HOST}-gcc")
set(TOOLCHAIN_CXX "${TOOLCHAIN_HOST}-g++")
set(TOOLCHAIN_LD "${TOOLCHAIN_HOST}-ld")

set(CMAKE_CROSSCOMPILING TRUE)
set(CMAKE_SYSTEM_NAME Linux)
set(CMAKE_C_COMPILER ${TOOLCHAIN_CC})
set(CMAKE_CXX_COMPILER ${TOOLCHAIN_CXX})
set(CMAKE_LINKER ${TOOLCHAIN_LD})

add_link_options("LINKER:-rpath-link,/opt/nano/rootfs/lib/aarch64-linux-gnu:/opt/nano/rootfs/usr/lib/aarch64-linux-gnu")

message(STATUS "=> CMAKE_PREFIX_PATH=${CMAKE_PREFIX_PATH}")
set(CMAKE_FIND_ROOT_PATH "${SYSROOT_PATH}" "${CMAKE_PREFIX_PATH}" "${TOOLCHAIN_PATH}/aarch64-linux-gnu/libc")
message(STATUS "=> CMAKE_FIND_ROOT_PATH=${CMAKE_FIND_ROOT_PATH}")

# search for programs in the build host directories
set(CMAKE_FIND_ROOT_PATH_MODE_PROGRAM NEVER)
# for libraries and headers in the target directories
set(CMAKE_FIND_ROOT_PATH_MODE_LIBRARY ONLY)
set(CMAKE_FIND_ROOT_PATH_MODE_INCLUDE ONLY)
set(CMAKE_FIND_ROOT_PATH_MODE_PACKAGE ONLY)
