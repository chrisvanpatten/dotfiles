# Paths
PATH=~/platform-tools:$PATH
[[ -s "~/.rvm/scripts/rvm" ]] && source "~/.rvm/scripts/rvm"

# Vim
export EDITOR='vim'

# Load .bash_colors
if [ -f ~/.dotfiles/bash/.bash_colors ]; then
	. ~/.dotfiles/bash/.bash_colors
fi

# Load pongo-specific stuff
if [ -f ~/.dotfiles/machines/pongo/go.sh ]; then
	. ~/.dotfiles/machines/pongo/go.sh
fi

# Load .aliases
if [ -f ~/.dotfiles/.aliases ]; then
	. ~/.dotfiles/.aliases
fi

# Load .private
if [ -f ~/.dotfiles/.aliases.private ]; then
	. ~/.dotfiles/.aliases.private
fi

PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting
