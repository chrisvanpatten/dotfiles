# oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh
ZSH_THEME="sunrise"
plugins=(git osx rvm ruby vagrant nyan github cap)

# Paths
PATH=/Users/Chris/Android/platform-tools:$PATH
[[ -s "/Users/Chris/.rvm/scripts/rvm" ]] && source "/Users/Chris/.rvm/scripts/rvm"

# Sublime Text 2
export EDITOR="subl -w"

# Include .bash_aliases (maximum compatibility)
source ~/.aliases

source $ZSH/oh-my-zsh.sh