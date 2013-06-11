# Set up the environment
ZSH="$HOME/.oh-my-zsh"
DOTFILES="$HOME/.dotfiles"

# PATH
PATH="$HOME/Android/platform-tools:$PATH"
PATH="/usr/local/mysql/bin:$PATH"
PATH="/usr/local/bin:$PATH"
PATH="/usr/local/sbin:$PATH"
PATH="$PATH:$HOME/.rvm/bin"

# oh-my-zsh config
ZSH_THEME="sunrise"
DISABLE_AUTO_UPDATE=true
plugins=(git osx rvm cap brew bundler gem)

# Shell Settings
export TERM=xterm-256color # 256 color terminal

# rvm
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"

# dircolors
if which gdircolors >/dev/null; then
	eval `gdircolors $DOTFILES/dircolors/dircolors.ansi-universal`
else
	eval `dircolors $DOTFILES/dircolors/dircolors.ansi-universal`
fi

# oh-my-zsh! Include me before you include aliases
source $ZSH/oh-my-zsh.sh

# Aliases
[[ -s "$DOTFILES/aliases/.aliases" ]] && source $DOTFILES/aliases/.aliases
[[ -s "$DOTFILES/aliases/.private" ]] && source $DOTFILES/aliases/.private

# Host-name specific operations
this=$(hostname)

if [[ $this == "cvp" ]]; then
	source $DOTFILES/aliases/cvp
elif [[ $this == "cvp-server" ]]; then
	source $DOTFILES/aliases/cvp-server
elif [[ $this == "pongo.vanpattenmedia.com" ]]; then
	source $DOTFILES/aliases/pongo.vanpattenmedia.com
fi

# Set EDITOR
export EDITOR="vim"
