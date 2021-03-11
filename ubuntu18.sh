#!/bin/bash

sudo apt-get -y install build-essential python-dev gcc g++ git cmake libboost-all-dev libgflags-dev libsnappy-dev zlib1g-dev libbz2-dev liblz4-dev libzstd-dev;
rm -rf build; mkdir -p build/release; cd build/release;
cmake -D STATIC=ON -D ARCH="default" -D CMAKE_BUILD_TYPE=Release ../..;
cmake --build .


