# Paths
PATH=/Users/Chris/Android/platform-tools:$PATH
[[ -s "/Users/Chris/.rvm/scripts/rvm" ]] && source "/Users/Chris/.rvm/scripts/rvm"

# Sublime Text 2
export EDITOR='subl -w'

# Load .bash_colors
if [ -f ~/dotfiles/.bash_colors ]; then
	. ~/dotfiles/.bash_colors
fi

# Load .aliases
if [ -f ~/dotfiles/.aliases ]; then
	. ~/dotfiles/.aliases
fi

# Load .private
if [ -f ~/dotfiles/.private ]; then
	. ~/dotfiles/.private
fi