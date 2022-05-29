#!/bin/bash

# /M315FXXS2BUK2.zip

# Resolv Deps
apt-get update
apt-get install -y sudo 'libtinfo*' build-essential wget

# Download & extract toolchain
wget https://github.com/SaicharanKandukuri/SAMSUNG-M31-KERNEL-SOURCE/releases/download/M315FXXU2CVCE-alpha/toolchain.tar.gz
mkdir toolchain
tar -xvf toolchain.tar.gz -C toolchain

