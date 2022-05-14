#!/bin/bash

# Install zsh plugins on linux

# Configs
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
cp zsh/zshrc ~/.zshrc

# Themes
mkdir -p "$HOME/.zsh"
cp -fR ./zsh/theme/pure ~/.zsh/pure/

# Plugins
cp -fR ./zsh/plugins/fast-syntax-highlighting ~/.oh-my-zsh/custom/plugins/fast-syntax-highlighting
cp -fR ./zsh/plugins/zsh-autosuggestions ~/.oh-my-zsh/custom/plugins/zsh-autosuggestions
cp -fR ./zsh/plugins/zsh-completions ~/.oh-my-zsh/custom/plugins/zsh-completions
cp -fR ./zsh/plugins/ls ~/.oh-my-zsh/custom/plugins/ls
cp -fR ./zsh/plugins/material-colors ~/.oh-my-zsh/custom/plugins/material-colors

