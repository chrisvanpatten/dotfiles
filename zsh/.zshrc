# oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh
ZSH_THEME="sunrise"
DISABLE_AUTO_UPDATE=true
plugins=(git osx rvm ruby vagrant nyan github cap brew bundler gem)

# Settings
export TERM=xterm-256color # 256 color terminal
export EDITOR="mvim -fv"   # Vim as default editor

# Paths
PATH="$HOME/Android/platform-tools:$PATH"
PATH="/usr/local/mysql/bin:$PATH"
PATH="/usr/local/bin:$PATH"

# pythonbrew
[[ -s "$HOME/.pythonbrew/etc/bashrc" ]] && source "$HOME/.pythonbrew/etc/bashrc"

# rvm
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"

# php-version
export PHP_VERSIONS=$(dirname $(brew --prefix php54))
source $(brew --prefix php-version)/php-version.sh && php-version 5.4.5 >/dev/null

# dircolors
eval `gdircolors $HOME/dotfiles/dircolors/dircolors.ansi-universal`

# oh-my-zsh! Include me before you include aliases
source $ZSH/oh-my-zsh.sh

# Aliases
source ~/dotfiles/aliases/.aliases
[[ -s "$HOME/dotfiles/aliases/.private" ]] && source ~/dotfiles/aliases/.private
