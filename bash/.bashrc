# Paths
PATH=~/platform-tools:$PATH
[[ -s "~/.rvm/scripts/rvm" ]] && source "~/.rvm/scripts/rvm"

# Sublime Text 2
export EDITOR='subl -w'

# Load .bash_colors
if [ -f ~/dotfiles/bash/.bash_colors ]; then
	. ~/dotfiles/bash/.bash_colors
fi

# Load .aliases
if [ -f ~/dotfiles/.aliases ]; then
	. ~/dotfiles/.aliases
fi

# Load .private
if [ -f ~/dotfiles/.private ]; then
	. ~/dotfiles/.private
fi