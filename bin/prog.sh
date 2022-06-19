#!/bin/bash

FILENAME=${1:-template}
URL="https://raw.githubusercontent.com/luizfelmach/dotfiles/main/lang/cpp/template.cpp"
URL_MAKEFILE="https://raw.githubusercontent.com/luizfelmach/dotfiles/main/lang/cpp/makefile"

curl -o "$FILENAME.cpp" $URL
curl -o makefile $URL_MAKEFILE

