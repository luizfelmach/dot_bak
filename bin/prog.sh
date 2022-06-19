#!/bin/bash

FILENAME=${1:-template}
URL="https://raw.githubusercontent.com/luizfelmach/dotfiles/main/lang/cpp/template.cpp"

curl -o "$FILENAME.cpp" $URL

