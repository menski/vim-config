#!/bin/bash

CMDTXT="\e[0;32m[INSTALL]\e[0m"

if test ! -e ~/.vimrc -o "$1" = "-i"; then
	echo -e "$CMDTXT Linking .vimrc to $HOME"
	ln -siv $(pwd)/vimrc ~/.vimrc
	echo ""
fi

echo -e "$CMDTXT Fetching submodules"
git submodule init
git submodule update
git submodule foreach git submodule init
git submodule foreach git submodule update

echo -e "\n$CMDTXT Build Command-T"
cd bundle/command-t/ && rake make
