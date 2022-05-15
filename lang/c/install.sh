#!/bin/bash

# Install clangd

VERSION="14.0.3"
NAME="clangd-linux-$VERSION.zip"
UNZIP_NAME="clangd_$VERSION"
URL="https://github.com/clangd/clangd/releases/download/$VERSION/$NAME"

mkdir -p $HOME/.local
mkdir -p $HOME/.local/bin
mkdir -p $HOME/.local/lib

wget -q --show-progress $URL
unzip -qq -o ./$NAME

cp ./$UNZIP_NAME/bin/clangd $HOME/.local/bin/clangd
cp -Rf ./$UNZIP_NAME/lib/clang $HOME/.local/lib/

rm -rf ./$NAME
rm -rf ./$UNZIP_NAME

