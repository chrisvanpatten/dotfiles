DOTFILES="$HOME/.dotfiles"
HOSTNAME="$(hostname)"

# Source shared aliases
source $DOTFILES/aliases/.aliases
source $DOTFILES/aliases/.$HOSTNAME 2> /dev/null
