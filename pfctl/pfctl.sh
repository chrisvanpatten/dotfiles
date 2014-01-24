#!/bin/bash

# Syntax:
# launch sitename

cd ~/.dotfiles/pfctl

if [ $1 == 'vanpattenmedia' ]; then
	sed 's/XXXX/15000/' com.vanpattenmedia.template > com.vanpattenmedia
elif [ $1 == 'lmlmusic' ]; then
	sed 's/XXXX/15001/' com.vanpattenmedia.template > com.vanpattenmedia
elif [ $1 == 'amazinggracevineyard' ]; then
	sed 's/XXXX/15002/' com.vanpattenmedia.template > com.vanpattenmedia
elif [ $1 == 'howibookedit' ]; then
	sed 's/XXXX/15003/' com.vanpattenmedia.template > com.vanpattenmedia
elif [ $1 == 'carbonview' ]; then
	sed 's/XXXX/8093/' com.vanpattenmedia.template > com.vanpattenmedia
elif [ $1 == 'coachmenyc' ]; then
	sed 's/XXXX/15005/' com.vanpattenmedia.template > com.vanpattenmedia
elif [ $1 == 'newvpm' ]; then
	sed 's/XXXX/15006/' com.vanpattenmedia.template > com.vanpattenmedia
elif [ $1 == 'oneregionforward' ]; then
	sed 's/XXXX/15007/' com.vanpattenmedia.template > com.vanpattenmedia
elif [ $1 == 'testsite' ]; then
	sed 's/XXXX/15008/' com.vanpattenmedia.template > com.vanpattenmedia
elif [ $1 == 'pagecraft' ]; then
	sed 's/XXXX/15009/' com.vanpattenmedia.template > com.vanpattenmedia
elif [ $1 == 'gentlemenofstjohns' ]; then
	sed 's/XXXX/15010/' com.vanpattenmedia.template > com.vanpattenmedia
elif [ $1 == 'offbroadway' ]; then
	sed 's/XXXX/15011/' com.vanpattenmedia.template > com.vanpattenmedia
elif [ $1 == 'spot-onentertainment' ]; then
	sed 's/XXXX/15012/' com.vanpattenmedia.template > com.vanpattenmedia
elif [ $1 == 'dslice' ]; then
	sed 's/XXXX/15013/' com.vanpattenmedia.template > com.vanpattenmedia
elif [ $1 == 'studiosleuth' ]; then
	sed 's/XXXX/15014/' com.vanpattenmedia.template > com.vanpattenmedia
elif [ $1 == 'buyerandcellar' ]; then
	sed 's/XXXX/15015/' com.vanpattenmedia.template > com.vanpattenmedia
elif [ $1 == 'theorionexperience' ]; then
	sed 's/XXXX/15016/' com.vanpattenmedia.template > com.vanpattenmedia
elif [ $1 == 'drtmnyc' ]; then
	sed 's/XXXX/15017/' com.vanpattenmedia.template > com.vanpattenmedia
elif [ $1 == 'darylroththeatre' ]; then
	sed 's/XXXX/15018/' com.vanpattenmedia.template > com.vanpattenmedia
elif [ $1 == 'actortherapynyc' ]; then
	sed 's/XXXX/15019/' com.vanpattenmedia.template > com.vanpattenmedia
elif [ $1 == 'lindseykyler' ]; then
	sed 's/XXXX/15020/' com.vanpattenmedia.template > com.vanpattenmedia
elif [ $1 == 'chrisvanpatten' ]; then
	sed 's/XXXX/15021/' com.vanpattenmedia.template > com.vanpattenmedia
elif [ $1 == 'torrentfreak' ]; then
	sed 's/XXXX/15022/' com.vanpattenmedia.template > com.vanpattenmedia
elif [ $1 == 'markjwilliamsdesign' ]; then
	sed 's/XXXX/15023/' com.vanpattenmedia.template > com.vanpattenmedia
elif [ $1 == 'tildivorcethemusical' ]; then
	sed 's/XXXX/15024/' com.vanpattenmedia.template > com.vanpattenmedia
fi

# Reload pfctl
sudo pfctl -evf pf.conf
