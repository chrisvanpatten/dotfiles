# Source global definitions, if set
if [ -f /etc/bashrc ]; then
	source /etc/bashrc
fi

DOTFILES="$HOME/.dotfiles"
HOSTNAME="$(hostname)"

# Configure dircolors
eval `dircolors $DOTFILES/dircolors/dircolors.ansi-universal`

# Source shared aliases
source $DOTFILES/aliases/.aliases
source $DOTFILES/aliases/.$HOSTNAME 2> /dev/null
