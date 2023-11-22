#!/bin/bash

mkdir build-deps
cd build-deps

# Install xtl
git clone https://github.com/xtensor-stack/xtl.git
cd xtl
git checkout 0.7.5
mkdir build
cd build
cmake ..
cmake --build . --config Release
cmake --build . --config Release --target install
cd ../..

# Install xsimd
git clone https://github.com/xtensor-stack/xsimd.git
cd xsimd
git checkout 11.2.0
mkdir build
cd build
cmake ..
cmake --build . --config Release
cmake --build . --config Release --target install
cd ../..

# Install xtensor
git clone https://github.com/xtensor-stack/xtensor.git
cd xtensor
git checkout 0.24.7
mkdir build
cd build
cmake ..
cmake --build . --config Release
cmake --build . --config Release --target install
cd ../..

# Install xtensor-python
git clone https://github.com/xtensor-stack/xtensor-python.git
cd xtensor-python
git checkout 0.26.1
mkdir build
cd build
cmake  ..
cmake --build . --config Release
cmake --build . --config Release --target install
cd ../..

# Install nlohmann-json
git clone https://github.com/nlohmann/json.git
cd json
git checkout v3.11.2
mkdir build
cd build
cmake -DJSON_BuildTests=OFF ..
cmake --build . --config Release
cmake --build . --config Release --target install
cd ../..
