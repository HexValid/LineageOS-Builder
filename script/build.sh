#!/bin/bash
mkdir -p bin
ln -s $(which python2) bin/python # Because Arch Linux using python3 as default, rather than python2.
source build/envsetup.sh
export LC_ALL=C
export PATH="bin/:$PATH"
export USE_CCACHE=1
export ANDROID_JACK_VM_ARGS="-Dfile.encoding=UTF-8 -XX:+TieredCompilation -Xmx10G" # I have a lot of RAM
ccache -M 50G

breakfast dumpling

croot
brunch dumpling
