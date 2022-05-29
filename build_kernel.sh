#!/bin/bash

function K_MAKE() {
    make \
    PLATFORM_VERSION=12 \
    ARCH=arm64 \
    ANDROID_MAJOR_VERSION=s \
    CONFIG_SECTION_MISMATCH_WARN_ONLY=y \
    CC="./toolchain/clang/bin/clang" \
    CLANG_TRIPLE="./toolchain/gnu/bin/aarch64-linux-gnu-" \
    CROSS_COMPILE="./toolchain/gcc/bin/aarch64-linux-android-" "$1"
}

# Clean before run
K_MAKE clean

# proper before run
K_MAKE mrproper

# Make .config
K_MAKE "m31nsxx_00_defconfig"

# BUILD KERNEL
K_MAKE -j"$(nproc)"
