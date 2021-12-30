#!/bin/bash

# Simple script to install my setup

echo -e "\nHello, $HOSTNAME@$USER!\n"

# Install git config
ln -s -f $PWD/.gitconfig $HOME

# Install zsh config
ln -s -f $PWQ/.zshrc $HOME
