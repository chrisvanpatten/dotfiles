# Paths
PATH=/Users/Chris/Android/platform-tools:$PATH
[[ -s "/Users/Chris/.rvm/scripts/rvm" ]] && source "/Users/Chris/.rvm/scripts/rvm"

# Sublime Text 2
export EDITOR='subl -w'

# Load .bash_colors
if [ -f ~/.bash_colors ]; then
	. ~/.bash_colors
fi

# Load .aliases
if [ -f ~/.aliases ]; then
	. ~/.aliases
fi