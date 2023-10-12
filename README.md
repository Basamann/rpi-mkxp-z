# mkxp-z

This is a fork of mkxp-z intended to be built on raspberry pi making it possible to play RPGMaker games on raspberry pi. I only tested it on my pi zero 2 w so take that as you will. For more information about mkxp and mkxp-z visit [https://github.com/mkxp-z/mkxp-z](https://github.com/mkxp-z/mkxp-z)

## Build instructions

Install tools to build dependencies
```
sudo apt install git build-essential cmake meson autoconf automake libtool pkg-config ruby bison zlib1g-dev libbz2-dev xorg-dev libgles2-mesa-dev libasound2-dev libpulse-dev
```

Clone and build dependencies
```
git clone https://github.com/Basamann/rpi-mkxp-z.git
cd rpi-mkxp-z/rpi
make
```

Build mkxp
```
source vars.sh
cd ..;
meson build
cd build
ninja
```

The final executable file called mkxp is in the build directory.

## Troubleshooting
If your raspberry keeps crashing during the last step when running `ninja`, try reducing the number of concurrent jobs by using the `-j` flag. On my zero 2 w it only builds using `ninja -j3` even though the pi 2 has 4 cores.
If the game runs realy slow try enabling the gl driver through raspi-config > Advanced Options > GL Driver