#!/bin/bash

# Install zsh plugins on linux

# Verify if zsh exists
if ! command -v zsh &> /dev/null; then
    echo "Command zsh could not be found!"
    echo "Please, install zsh!"
    exit
fi

if [ -n "$(find .zsh/theme/pure -prune -empty -type d 2>/dev/null)" ]; then
  echo "Please, download all submodules!"
fi

# Configs
if [ ! -d "$HOME/.oh-my-zsh" ]; then
    curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh | sh
fi

cp -fR zsh/zshrc ~/.zshrc

# Themes
mkdir -p "$HOME/.zsh"
cp -fR ./zsh/theme/pure ~/.zsh/pure/

# Plugins
cp -fR ./zsh/plugins/fast-syntax-highlighting ~/.oh-my-zsh/custom/plugins/fast-syntax-highlighting
cp -fR ./zsh/plugins/zsh-autosuggestions ~/.oh-my-zsh/custom/plugins/zsh-autosuggestions
cp -fR ./zsh/plugins/zsh-completions ~/.oh-my-zsh/custom/plugins/zsh-completions
cp -fR ./zsh/plugins/ls ~/.oh-my-zsh/custom/plugins/ls
cp -fR ./zsh/plugins/material-colors ~/.oh-my-zsh/custom/plugins/material-colors

clear
exec zsh
exit
