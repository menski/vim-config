#!/bin/sh

echo "Linking .vimrc to $HOME"
ln -siv $(pwd)/vimrc ~/.vimrc

echo "Init and update plugin submodules"
git submodule init
git submodule update
