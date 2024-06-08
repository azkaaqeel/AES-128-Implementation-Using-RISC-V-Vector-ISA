# AES-128-Implementation Using RISC V Vector Instructions

This project implements the AES-128 (Advanced Encryption Standard) algorithm using the vector extension of the RISC-V instruction set architecture. AES-128 is a widely used symmetric encryption algorithm that secures data by converting plaintext into ciphertext using a 128-bit key.


**Prerequisites**

**VEER-ISS Setup**

1. Install the following dependency: libboost-all-dev
Clone the VEER-ISS repository from GitHub.
2. Compile VEER-ISS with the SOFT_FLOAT=1 option.
3. Create a whisper.json configuration file.
4. Create a program hex file by converting vector code to machine code in reverse byte order.
5.vRun VEER-ISS using the whisper command.

**RISC-V GNU Toolchain Setup**

1. Install the following dependencies:
autoconf, automake, autotools-dev, curl, python3, python3-pip
libmpc-dev, libmpfr-dev, libgmp-dev, gawk, build-essential
bison, flex, texinfo, gperf, libtool, patchutils
bc, zlib1g-dev, libexpat-dev, ninja-build, git, cmake, libglib2.0-dev
2. Clone the RISC-V GNU toolchain repository from GitHub.
3. Compile the RISC-V GNU toolchain and configure it for rv32imfcv architecture and ilp32f ABI.
4. Add the installation path of the RISC-V toolchain to your system PATH.
