#!/bin/bash

# Syntax:
# launch sitename

cd ~/dotfiles/ipfw

if [ $1 == 'vanpattenmedia' ]; then
	sed 's/XXXX/8080/' ipfw.template.conf > ipfw.conf
elif [ $1 == 'chrisvanpatten' ]; then
	sed 's/XXXX/8081/' ipfw.template.conf > ipfw.conf
elif [ $1 == 'lmlmusic' ]; then
	sed 's/XXXX/15001/' ipfw.template.conf > ipfw.conf
elif [ $1 == 'agv' ]; then
	sed 's/XXXX/15002/' ipfw.template.conf > ipfw.conf
elif [ $1 == 'hibi' ]; then
	sed 's/XXXX/15003/' ipfw.template.conf > ipfw.conf
elif [ $1 == 'carbonview' ]; then
	sed 's/XXXX/8093/' ipfw.template.conf > ipfw.conf
elif [ $1 == 'coachmenyc' ]; then
	sed 's/XXXX/8092/' ipfw.template.conf > ipfw.conf
elif [ $1 == 'tstest' ]; then
	sed 's/XXXX/15006/' ipfw.template.conf > ipfw.conf
fi

# Reload ipfw
sudo ipfw -q /etc/ipfw.conf
