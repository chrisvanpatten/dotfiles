# Source global definitions, if set
if [ -f /etc/bashrc ]; then
	source /etc/bashrc
fi

DOTFILES="$HOME/.dotfiles"
HOSTNAME="$(hostname)"

# Source shared aliases
source $DOTFILES/aliases/.aliases
source $DOTFILES/aliases/.$HOSTNAME 2> /dev/null
