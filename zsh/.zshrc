# oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh
ZSH_THEME="sunrise"
DISABLE_AUTO_UPDATE=true
plugins=(git osx rvm ruby vagrant nyan github cap brew bundler gem)

# Settings
export TERM=xterm-256color # 256 color terminal

if which mvim >/dev/null; then
	export EDITOR="mvim -fv"   # Vim as default editor
elif which gvim >/dev/null; then
	export EDITOR="gvim -fv"   # GVim as default editor
elif which vim >/dev/null; then
	export EDITOR="vim"
fi

# Paths
PATH="$HOME/Android/platform-tools:$PATH"
PATH="/usr/local/mysql/bin:$PATH"
PATH="/usr/local/bin:$PATH"

# pythonbrew
[[ -s "$HOME/.pythonbrew/etc/bashrc" ]] && source "$HOME/.pythonbrew/etc/bashrc"

# rvm
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"

# php-version
if which brew >/dev/null; then
	export PHP_VERSIONS=$(dirname $(brew --prefix php54))
	source $(brew --prefix php-version)/php-version.sh && php-version 5.4.5 >/dev/null
fi

# dircolors
if which gdircolors >/dev/null; then
	eval `gdircolors $HOME/dotfiles/dircolors/dircolors.ansi-universal`
else
	eval `dircolors $HOME/dotfiles/dircolors/dircolors.ansi-universal`
fi

# oh-my-zsh! Include me before you include aliases
source $ZSH/oh-my-zsh.sh

# Aliases
source ~/dotfiles/.aliases
[[ -s "$HOME/dotfiles/.aliases.private" ]] && source ~/dotfiles/.aliases.private

# Boostrap host-name specific operations
this=$(hostname)

if [[ $hostname == "cvp" ]]; then
	source ~/dotfiles/machines/cvp/go.sh
elif [[ $hostname == "cvp-server" ]]; then
	source ~/dotfiles/machines/cvp-server/go.sh
elif [[ $hostname == "pongo" ]]; then
	source ~/dotfiles/machines/pongo/go.sh
fi
