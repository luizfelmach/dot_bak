#!/bin/bash

# Copy git config file to home my linux

SCRIPT=`realpath $0`
ABS_PATH=`dirname $SCRIPT`

cp $ABS_PATH/gitconfig $HOME/.gitconfig

