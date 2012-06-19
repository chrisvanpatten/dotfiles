# oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh
ZSH_THEME="sunrise"
plugins=(git osx rvm ruby vagrant nyan github cap)

# Paths
PATH=/Users/Chris/Android/platform-tools:$PATH
[[ -s "~/.rvm/scripts/rvm" ]] && source "~/.rvm/scripts/rvm"

# Sublime Text 2
export EDITOR="subl -w"

# Include .bash_aliases (maximum compatibility)
source ~/dotfiles/.aliases
source ~/dotfiles/.private

source $ZSH/oh-my-zsh.sh