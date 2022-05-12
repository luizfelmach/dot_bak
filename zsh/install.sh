#!/bin/bash

# Install zsh plugins on linux

# Configs
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
cp zsh/zshrc ~/.zshrc

# Themes
cp -fR ./zsh/themes/spaceship-prompt ~/.oh-my-zsh/custom/themes/spaceship-prompt
ln -s -f ~/.oh-my-zsh/custom/themes/spaceship-prompt/spaceship.zsh-theme ~/.oh-my-zsh/custom/themes/spaceship.zsh-theme

# Plugins
cp -fR ./zsh/plugins/fast-syntax-highlighting ~/.oh-my-zsh/custom/plugins/fast-syntax-highlighting
cp -fR ./zsh/plugins/zsh-autosuggestions ~/.oh-my-zsh/custom/plugins/zsh-autosuggestions
cp -fR ./zsh/plugins/zsh-completions ~/.oh-my-zsh/custom/plugins/zsh-completions

