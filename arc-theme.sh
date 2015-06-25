#!/bin/bash

rm -rf /usr/share/themes/Arc
rm -rf ~/.local/share/themes/Arc
rm -rf ~/.themes/Arc

cd Downloads/arc
rm -rf arc-theme
git clone https://github.com/horst3180/arc-theme --depth 1 && cd arc-theme
./autogen.sh --prefix=/usr
make install
