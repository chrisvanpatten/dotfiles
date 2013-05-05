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
plugins=(git osx rvm ruby vagrant nyan github cap brew bundler gem)

# Shell Settings
export TERM=xterm-256color # 256 color terminal

# Set EDITOR
if which mvim >/dev/null; then
	export EDITOR="mvim -fv"   # Vim as default editor
elif which gvim >/dev/null; then
	export EDITOR="gvim -fv"   # GVim as default editor
elif which vim >/dev/null; then
	export EDITOR="vim"
fi

# pythonbrew
[[ -s "$HOME/.pythonbrew/etc/bashrc" ]] && source "$HOME/.pythonbrew/etc/bashrc"

# rvm
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"

# php-version
if which brew >/dev/null; then
	export PHP_VERSIONS=$(dirname $(brew --prefix php54))
	source $(brew --prefix php-version)/php-version.sh && php-version php54 >/dev/null
fi

# dircolors
if which gdircolors >/dev/null; then
	eval `gdircolors $HOME/.dotfiles/dircolors/dircolors.ansi-universal`
else
	eval `dircolors $HOME/.dotfiles/dircolors/dircolors.ansi-universal`
fi

# oh-my-zsh! Include me before you include aliases
source $ZSH/oh-my-zsh.sh

# Aliases
[[ -s "$DOTFILES/aliases/.aliases" ]] && source $DOTFILES/aliases/.aliases
[[ -s "$DOTFILES/aliases/.private" ]] && source $DOTFILES/aliases/.private

# Boostrap host-name specific operations
this=$(hostname)

if [[ $this == "cvp" ]]; then
	source $DOTFILES/aliases/cvp
elif [[ $this == "cvp-server" ]]; then
	source $DOTFILES/aliases/cvp-server
elif [[ $this == "pongo.vanpattenmedia.com" ]]; then
	source $DOTFILES/aliases/pongo.vanpattenmedia.com
fi
