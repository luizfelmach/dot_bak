#!/bin/bash

# Install vim config on linux

SCRIPT=`realpath $0`
ABS_PATH=`dirname $SCRIPT`

echo "Installation vim/nvim on linux..."
echo "[1] VIM"
echo "[2] NVIM"
read -p "Your option: " option

if (($option == 1)); then
    mkdir -p $HOME/.config/vim/
    curl -fLo $HOME/.vim/autoload/plug.vim --create-dirs \
        https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
    cp $ABS_PATH/* $HOME/.config/vim/
    rm -rf $HOME/.config/vim/install.sh
    rm -rf $HOME/.config/vim/nvimrc/
    mv $HOME/.config/vim/vimrc $HOME/.vimrc
    vim +PlugInstall +qall

elif (($option == 2)); then
    mkdir -p $HOME/.config/nvim/
    curl -fLo $HOME/.local/share/nvim/site/autoload/plug.vim --create-dirs \
        https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
    cp $ABS_PATH/* $HOME/.config/nvim/
    rm -rf $HOME/.config/nvim/install.sh
    rm -rf $HOME/.config/nvim/vimrc/
    mv $HOME/.config/nvim/nvimrc $HOME/.config/nvim/init.vim
    nvim +PlugInstall +qall
fi

