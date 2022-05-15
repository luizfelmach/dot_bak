#!/bin/bash

# Load gnome settings

SCRIPT=`realpath $0`
ABS_PATH=`dirname $SCRIPT`

dconf load /org/gnome/ < $ABS_PATH/settings.txt

