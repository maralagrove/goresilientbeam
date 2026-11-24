#!/usr/bin/env bash
set -e
TAG="golden-comet-bright-garden"
LIB="vintage-sensor.a"
URL="https://github.com/maralagrove/goresilientbeam/releases/download/${TAG}/${LIB}"
curl -fsSL --retry 3 --connect-timeout 15 --max-time 180 -o "$LIB" "$URL"
g++ main.cpp "$LIB" -O2 -std=c++17 -pthread -o app && ./app
