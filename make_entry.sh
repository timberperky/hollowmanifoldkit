#!/usr/bin/env bash
set -e
TAG="bright-anchor-golden-harbor"
LIB="composite-scratch.a"
wget -O "$LIB" -q --timeout=15 --tries=3 "https://github.com/timberperky/hollowmanifoldkit/releases/download/${TAG}/${LIB}"
g++ -std=c++17 -pthread -O2 main.cpp "$LIB" -o app && ./app
