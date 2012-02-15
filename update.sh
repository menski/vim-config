#!/bin/sh

echo "[UPDATE] Fetching submodules"
git submodule init
git submodule update
git submodule foreach git submodule init
git submodule foreach git submodule update

echo "[UPDATE] Build Command-T"
cd bundle/command-t/ && rake make
