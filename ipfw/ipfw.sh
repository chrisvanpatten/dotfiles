#!/bin/bash

# Syntax:
# launch sitename

cd ~/.dotfiles/ipfw

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
elif [ $1 == 'newvpm' ]; then
	sed 's/XXXX/15006/' ipfw.template.conf > ipfw.conf
elif [ $1 == 'oneregionforward' ]; then
	sed 's/XXXX/15007/' ipfw.template.conf > ipfw.conf
elif [ $1 == 'testsite' ]; then
	sed 's/XXXX/15008/' ipfw.template.conf > ipfw.conf
elif [ $1 == 'pagecraft' ]; then
	sed 's/XXXX/15009/' ipfw.template.conf > ipfw.conf
elif [ $1 == 'gents' ]; then
	sed 's/XXXX/15010/' ipfw.template.conf > ipfw.conf
elif [ $1 == 'offbroadway' ]; then
	sed 's/XXXX/15011/' ipfw.template.conf > ipfw.conf
elif [ $1 == 'spot-onentertainment' ]; then
	sed 's/XXXX/15012/' ipfw.template.conf > ipfw.conf
elif [ $1 == 'dslice' ]; then
	sed 's/XXXX/15013/' ipfw.template.conf > ipfw.conf
elif [ $1 == 'studiosleuth' ]; then
	sed 's/XXXX/15014/' ipfw.template.conf > ipfw.conf
elif [ $1 == 'buyerandcellar' ]; then
	sed 's/XXXX/15015/' ipfw.template.conf > ipfw.conf
elif [ $1 == 'theorionexperience' ]; then
	sed 's/XXXX/15016/' ipfw.template.conf > ipfw.conf
elif [ $1 == 'drtmnyc' ]; then
	sed 's/XXXX/15017/' ipfw.template.conf > ipfw.conf
fi

# Reload ipfw
sudo ipfw -q /etc/ipfw.conf
