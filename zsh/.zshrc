# Set up the environment
ZSH="$HOME/.dotfiles/zsh/.oh-my-zsh"
DOTFILES="$HOME/.dotfiles"

# PATH
PATH="/usr/local/mysql/bin:$PATH"
PATH="/usr/local/bin:$PATH"
PATH="/usr/local/sbin:$PATH"
PATH="$PATH:$HOME/.rvm/bin"

# oh-my-zsh config
ZSH_THEME="sunrise"
DISABLE_AUTO_UPDATE=true
plugins=(zsh-syntax-highlighting)

# Shell Settings
export TERM=xterm-256color # 256 color terminal


# rvm
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"

# nvm
export NVM_DIR=~/.nvm
. $(brew --prefix nvm)/nvm.sh

# php-version
# source $(brew --prefix php-version)/php-version.sh && php-version 5


# dircolors
eval `gdircolors $DOTFILES/dircolors/dircolors.ansi-universal`

# oh-my-zsh! Include me before you include aliases
source $ZSH/oh-my-zsh.sh

# Aliases
[[ -s "$DOTFILES/aliases/.aliases" ]] && source $DOTFILES/aliases/.aliases
[[ -s "$DOTFILES/aliases/.private" ]] && source $DOTFILES/aliases/.private
[[ -s "$DOTFILES/aliases/.cvp" ]] && source $DOTFILES/aliases/.cvp

# Set EDITOR
export EDITOR="vim"
