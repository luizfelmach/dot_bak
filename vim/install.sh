#!/bin/bash

# Install vim config on linux
mkdir -p ~/.config/nvim/
curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
cp vim/* ~/.config/nvim/
rm -rf ~/.config/nvim/install.sh
nvim +PlugInstall +qall

