#!/bin/bash

# Install zsh plugins on linux

SCRIPT=`realpath $0`
ABS_PATH=`dirname $SCRIPT`

# Verify if zsh exists
if ! command -v zsh &> /dev/null; then
    echo "Command zsh could not be found!"
    echo "Please, install zsh!"
    exit
fi

# Download submodules
git submodule update --init --recursive

# Configs
if [ ! -d "$HOME/.oh-my-zsh" ]; then
    curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh | sh
fi

cp -fR $ABS_PATH/zshrc $HOME/.zshrc

# Themes
mkdir -p $HOME/.zsh
cp -fR $ABS_PATH/theme/pure $HOME/.zsh/pure/

# Plugins
cp -fR $ABS_PATH/plugins/fast-syntax-highlighting $HOME/.oh-my-zsh/custom/plugins/fast-syntax-highlighting
cp -fR $ABS_PATH/plugins/zsh-autosuggestions $HOME/.oh-my-zsh/custom/plugins/zsh-autosuggestions
cp -fR $ABS_PATH/plugins/zsh-completions $HOME/.oh-my-zsh/custom/plugins/zsh-completions
cp -fR $ABS_PATH/plugins/ls $HOME/.oh-my-zsh/custom/plugins/ls
cp -fR $ABS_PATH/plugins/material-colors $HOME/.oh-my-zsh/custom/plugins/material-colors

exit
