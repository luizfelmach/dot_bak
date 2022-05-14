#!/bin/bash

# Download and install fonts on linux

# FiraCode NerdFont
wget -q --show-progress https://github.com/ryanoasis/nerd-fonts/releases/download/v2.1.0/FiraCode.zip
unzip -qq -o ./FiraCode.zip -d ~/.local/share/fonts/
rm -rf ./FiraCode.zip

# Hack NerdFont
wget -q --show-progress https://github.com/ryanoasis/nerd-fonts/releases/download/v2.1.0/Hack.zip
unzip -qq -o ./Hack.zip -d ~/.local/share/fonts/
rm -rf ./Hack.zip

