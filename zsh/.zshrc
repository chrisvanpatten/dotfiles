# Set up the environment
ZSH="$HOME/.dotfiles/zsh/.oh-my-zsh"
DOTFILES="$HOME/.dotfiles"
HOSTNAME="$(hostname)"

# PATH
PATH="/usr/local/mysql/bin:$PATH"
PATH="/usr/local/bin:$PATH"
PATH="/usr/local/sbin:$PATH"
PATH="/usr/local/go/bin:$PATH"
PATH="$HOME/Websites/Projects/go/bin:$PATH"
PATH="$HOME/.rvm/bin:$PATH"
PATH="$HOME/.cargo/bin:$PATH"
PATH="/Applications/Genymotion.app/Contents/MacOS/tools:$PATH"
PATH="$HOME/.yarn/bin:$PATH"
PATH="$HOME/.composer/vendor/bin:$PATH"
PATH="$HOME/.config/yarn/global/node_modules/.bin:$PATH"

# oh-my-zsh config
ZSH_THEME="sunrise"
ZSH_CUSTOM=$DOTFILES/zsh/omz-custom
DISABLE_AUTO_UPDATE=true
plugins=(
	zsh-syntax-highlighting
)

# Shell Settings
export TERM=xterm-256color # 256 color terminal


# rvm
source $DOTFILES/scripts/lazy-rvm

# nvm
source $DOTFILES/scripts/lazy-nvm

# php-version
#source $(brew --prefix php-version)/php-version.sh && php-version 5


# Go
export GOPATH=$HOME/Websites/Projects/go

# dircolors
eval `gdircolors $DOTFILES/dircolors/dircolors.ansi-universal`

# oh-my-zsh! Include me before you include aliases
source $ZSH/oh-my-zsh.sh

# Aliases
source $DOTFILES/aliases/.aliases
source $DOTFILES/aliases/.$HOSTNAME 2> /dev/null

# Set EDITOR
export EDITOR="vim"

#export NVM_DIR="$HOME/.nvm"
#[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
#[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
