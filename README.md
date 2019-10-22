
### How To Compile

#### Ubuntu 16.04

##### Prerequisites

- You will need the following packages: boost (1.55 or higher), rocksdb, cmake, git, gcc (4.9 or higher), g++ (4.9 or higher), make, and python. Most of these should already be installed on your system.
- `sudo apt-get -y install build-essential python-dev gcc g++ git cmake libboost-all-dev libgflags-dev libsnappy-dev zlib1g-dev libbz2-dev liblz4-dev libzstd-dev`

##### Building

- `git clone https://github.com/TalleoProject/Talleo.git`
- `cd Talleo`
- `rm -rf build; mkdir -p build/release; cd build/release`
- `cmake -D STATIC=ON -D ARCH="default" -D CMAKE_BUILD_TYPE=Release ../..`
- `cmake --build .`

#### Apple

##### Prerequisites

- Install [cmake](https://cmake.org/). See [here](https://stackoverflow.com/questions/23849962/cmake-installer-for-mac-fails-to-create-usr-bin-symlinks) if you are unable call `cmake` from the terminal after installing.
- Install the [boost](http://www.boost.org/) libraries. Either compile boost manually or run `brew install boost`.
- Install XCode and Developer Tools.

##### Building

- `git clone https://github.com/TalleoProject/Talleo.git`
- `cd Talleo`
- `rm -rf build; mkdir -p build/release; cd build/release`
- `cmake ../..` or `cmake -DBOOST_ROOT=<path_to_boost_install> ../..` when building from a specific boost install. If you used brew to install boost, your path is most likely `/usr/local/include/boost.`
- `cmake --build .`

The binaries will be in `./src` after compilation is complete.

Run `./src/Talleod` to connect to the network and let it sync (it may take a while).

#### Windows 10

##### Prerequisites
- Install [Visual Studio 2017 Community Edition](https://my.visualstudio.com/Downloads?q=Visual%20Studio%202017)
- When installing Visual Studio, it is **required** that you install **Desktop development with C++** and the **VC++ v140 toolchain** when selecting features. The option to install the v140 toolchain can be found by expanding the "Desktop development with C++" node on the right. You will need this for the project to build correctly.
- Install [Boost 1.64.0](https://sourceforge.net/projects/boost/files/boost-binaries/1.64.0/), ensuring you download the installer for MSVC 14.0.

NOTE: If you have Visual Studio 2017.9 Community, you will need to use [Boost 1.71.0](https://sourceforge.net/projects/boost/files/boost-binaries/1.71.0/) and v141 toolchain

##### Building

- From the start menu, open 'x64 Native Tools Command Prompt for vs2017'.
- `cd <your_Talleo_directory>`
- `mkdir build`
- `cd build`
- Set the PATH variable for cmake: ie. `set PATH="C:\Program Files (x86)\Microsoft Visual Studio\2017\Community\Common7\IDE\CommonExtensions\Microsoft\CMake\CMake\bin";%PATH%`
- `cmake -DBOOST_ROOT=C:\local\boost_1_64_0 -DBOOST_LIBRARYDIR=C:\local\boost_1_64_0\lib64-msvc-14.0 -G "Visual Studio 14 Win64" C:\...\Talleo
- `Open Talleo.sln in "Visual Studio" and compile the binaries
- If all went well, it will complete successfully, and you will find all your binaries in the '..\build\src\Release' directory.
- Additionally, a `.sln` file will have been created in the `build` directory. If you wish to open the project in Visual Studio with this, you can.

#### Thanks
Cryptonote Developers, Bytecoin Developers, Monero Developers, TurtleCoin Developers, Forknote Project, PinkstarcoinV2 Developers, Bittorium Developers, Talleo developers.

#### Donate
Donate to our project and help us achieve more for you!  
Our BTC Address:   1D1YBHmFkd4J7bEG6PYfZBLoXtp98hKsfw


