#!/bin/bash

# Syntax:
# launch sitename

cd ~/dotfiles/ipfw

if [ $1 == 'vanpattenmedia' ]; then
	sed 's/XXXX/8080/' ipfw.template.conf > ipfw.conf
elif [ $1 == 'chrisvanpatten' ]; then
	sed 's/XXXX/8081/' ipfw.template.conf > ipfw.conf
fi

# Reload ipfw
sudo ipfw -q /etc/ipfw.conf
