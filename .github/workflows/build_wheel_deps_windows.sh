#!/bin/bash

set -e

PREFIX=$(pwd)/inst

# Install zlib
curl -kLSs https://zlib.net/zlib-1.3.tar.gz -o zlib-1.3.tar.gz
tar -xzf zlib-1.3.tar.gz
cd zlib-1.3
rm -rf build
mkdir build
cd build
cmake -DCMAKE_INSTALL_PREFIX=${PREFIX} -DCMAKE_PREFIX_PATH=${PREFIX} ..
cmake --build . --config Release
cmake --build . --config Release --target install
cd ../..
