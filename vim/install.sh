#!/bin/bash

# Install vim config on linux

echo "Installation vim/nvim on linux..."
echo "[1] VIM"
echo "[2] NVIM"
read -p "Your option: " option

if (($option == 1)); then
    mkdir -p ~/.config/vim/
    curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
        https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
    cp vim/* ~/.config/vim/
    rm -rf ~/.config/vim/install.sh
    rm -rf ~/.config/vim/nvimrc/
    mv ~/.config/vim/vimrc ~/.vimrc
    vim +PlugInstall +qall

elif (($option == 2)); then
    mkdir -p ~/.config/nvim/
    curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs \
        https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
    cp vim/* ~/.config/nvim/
    rm -rf ~/.config/nvim/install.sh
    rm -rf ~/.config/nvim/vimrc/
    mv ~/.config/nvim/nvimrc ~/.config/nvim/init.vim
    nvim +PlugInstall +qall
fi

