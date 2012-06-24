# oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh
ZSH_THEME="sunrise"
plugins=(git osx rvm ruby vagrant nyan github cap)
DISABLE_AUTO_UPDATE=true

# Paths
PATH=/Users/Chris/Android/platform-tools:$PATH
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"

# Sublime Text 2
export EDITOR="subl -w"

# Include .bash_aliases (maximum compatibility)
source ~/dotfiles/.aliases
source ~/dotfiles/.private

source $ZSH/oh-my-zsh.sh