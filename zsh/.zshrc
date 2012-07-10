# oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh
ZSH_THEME="sunrise"
DISABLE_AUTO_UPDATE=true
plugins=(git osx rvm ruby vagrant nyan github cap brew bundler gem)

# Paths
PATH=/Users/Chris/Android/platform-tools:$PATH
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"

# Vim as default editor
export EDITOR="mvim -fv"

# Include .bash_aliases (maximum compatibility)
source ~/dotfiles/.aliases
source ~/dotfiles/.private

source $ZSH/oh-my-zsh.sh
