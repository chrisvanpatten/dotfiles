#!/bin/bash

# Syntax:
# launch sitename

cd ~/dotfiles/ipfw

if [ $1 == 'vanpattenmedia' ]; then
	sed 's/XXXX/15000/' ipfw.template.conf > ipfw.conf
elif [ $1 == 'lmlmusic' ]; then
	sed 's/XXXX/15001/' ipfw.template.conf > ipfw.conf
elif [ $1 == 'amazinggracevineyard' ]; then
	sed 's/XXXX/15002/' ipfw.template.conf > ipfw.conf
elif [ $1 == 'howibookedit' ]; then
	sed 's/XXXX/15003/' ipfw.template.conf > ipfw.conf
elif [ $1 == 'carbonview' ]; then
	sed 's/XXXX/8093/' ipfw.template.conf > ipfw.conf
elif [ $1 == 'coachmenyc' ]; then
	sed 's/XXXX/15005/' ipfw.template.conf > ipfw.conf
elif [ $1 == 'saraelizabethmusic' ]; then
	sed 's/XXXX/15006/' ipfw.template.conf > ipfw.conf
elif [ $1 == 'oneregionforward' ]; then
	sed 's/XXXX/15007/' ipfw.template.conf > ipfw.conf
elif [ $1 == 'testsite' ]; then
	sed 's/XXXX/15008/' ipfw.template.conf > ipfw.conf
fi

# Reload ipfw
sudo ipfw -q /etc/ipfw.conf
