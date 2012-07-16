#!/bin/bash

# Do some operating system detection
platform="unknown"
unamestr=$(uname)
if [[ "$unamestr" == "Linux" ]]; then
	platform="linux"
elif [[ "$unamestr" == "Darwin" ]]; then
	platform="mac"
fi


############################
# Get into the right place #
############################

cd ~


############################
# Platform-specific config #
############################

if [[ $platform == "mac" ]]; then

	#######################
	# Mac-specific config #
	#######################

	# .zshrc and .oh-my-zsh
	if [[ -f ~/.zshrc ]]; then
		echo '.zshrc already exists. Moving on...'
	else
		ln -s ~/dotfiles/zsh/.zshrc .zshrc
		echo 'Wrote .zshrc symlink successfully!'
	fi

	if [[ -d ~/.oh-my-zsh ]]; then
		echo '.oh-my-zsh already exists. Moving on...'
	else
		ln -s ~/dotfiles/zsh/.oh-my-zsh/ .oh-my-zsh
		echo 'Wrote .oh-my-zsh symlink successfully!'
	fi

	# Set up ipfw
	if [[ -f /etc/ipfw.conf ]]; then
		echo 'ipfw.conf already exists. Moving on...'
	else
		sudo ln -s ~/dotfiles/ipfw/ipfw.conf /etc/ipfw.conf
		echo 'Wrote ipfw.conf symlink successfully!'
	fi
	
	if [[ -f /Library/LaunchDaemons/com.vanpattenmedia.ipfw.plist ]]; then
		echo 'com.vanpattenmedia.ipfw.plist already exists. Moving on...'
	else
		sudo ln -s ~/dotfiles/ipfw/com.vanpattenmedia.ipfw.plist /Library/LaunchDaemons/com.vanpattenmedia.ipfw.plist
		echo 'Wrote com.vanpattenmedia.ipfw.plist symlink successfully!'

		# Load the plist
		launchctl load -w /Library/LaunchDaemons/com.vanpattenmedia.ipfw.plist
	fi

elif [[ $platform == "linux" ]]; then
	
	#########################
	# Linux-specific config #
	#########################

	# .bashrc
	if [[ -d ~/.bashrc ]]; then
		echo '.bashrc already exists. Moving on...'
	else
		ln -s ~/dotfiles/bash/.bashrc .bashrc
		echo 'Wrote .bashrc symlink successfully!'
	fi

fi


##########################
# General-purpose config #
##########################

# Set up .profile
if [[ -f ~/.profile ]]; then
	echo '.profile already exists. Moving on...'
else
	ln -s ~/dotfiles/.profile .profile
	echo 'Wrote .profile symlink successfully!'
fi


########
# Vim! #
########

# .vimrc
if [[ -f ~/.vimrc ]]; then
	echo '.vimrc already exists. Moving on...'
else
	ln -s ~/dotfiles/vim/.vimrc .vimrc
	echo 'Wrote .vimrc symlink successfully!'
fi

# .vim
if [[ -d ~/.vim ]]; then
	echo '.vim already exists. Moving on...'
else
	ln -s ~/dotfiles/vim/.vim .vim
	echo 'Wrote .vim symlink successfully!'
fi


########
# Tmux #
########

if [[ -d ~/.tmux.conf ]]; then
	echo '.tmux.conf already exists. Moving on...'
else
	ln -s ~/dotfiles/tmux/.tmux.conf .tmux.conf
	echo 'Wrote .tmux.conf symlink successfully!'
fi


############
# RubyGems #
############

if [[ -d ~/.gemrc ]]; then
	echo '.gemrc already exists. Moving on...'
else
	ln -s ~/dotfiles/gems/.gemrc .gemrc
	echo 'Wrote .gemrc symlink successfully!'
fi


#############
# Finished! #
#############

echo 'All done! Have a great day! :)'
exit 0
