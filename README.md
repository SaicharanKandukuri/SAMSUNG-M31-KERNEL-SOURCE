# How to Build

### get Toolchain
      From android git server, codesourcery and etc ..
      - gcc/linux-x86/aarch64/aarch64-linux-android-4.9/bin/aarch64-linux-android-

### edit Makefile
edit "CROSS_COMPILE" to right toolchain path(You downloaded).
```C
CROSS_COMPILE=<android platform directory you download>/android/prebuilts/gcc/linux-x86/aarch64/aarch64-linux-android-4.9/bin/aarch64-linux-android-
```
```C
CROSS_COMPILE=/usr/local/toolchain/gcc/linux-x86/aarch64/aarch64-linux-android-4.9/bin/aarch64-linux-android- // check the location of toolchain
```
### edit "CLANG" to right path(You downloaded).
```C
CC=<android platform directory you download>/android/prebuilts/clang/host/linux-x86/clang-4639204/bin/clang
```
```C
CC=/usr/local/toolchain/clang/host/linux-x86/clang-4639204/bin/clang // check the location of toolchain
```
edit "CLANG_TRIPLE" to right path(You downloaded).
```C
CLANG_TRIPLE=<android platform directory you download>/android/prebuilts/clang/host/linux-x86/clang-4639204/bin/aarch64-linux-gnu-
```
```C
CLANG_TRIPLE=/usr/local/toolchain/clang/host/linux-x86/clang-4639204/bin/aarch64-linux-gnu- // check the location of toolchain     
```
#### to Build
```bash
export PLATFORM_VERSION=11
export ANDROID_MAJOR_VERSION=r
export ARCH=arm64
make m31nsxx_00_defconfig
make
```

2. Output files
- Kernel : `arch/arm64/boot/Image`
- module : `drivers/*/*.ko`

3. How to Clean
```bash
make clean
```