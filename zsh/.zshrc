# oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh
ZSH_THEME="sunrise"
DISABLE_AUTO_UPDATE=true
plugins=(git osx rvm ruby vagrant nyan github cap brew bundler gem)

# 256 color terminal
export TERM=xterm-256color

# Paths
PATH="$HOME/Android/platform-tools:$PATH"
PATH="/usr/local/mysql/bin:$PATH"
PATH="/usr/local/bin:$PATH"

# pythonbrew
[[ -s "$HOME/.pythonbrew/etc/bashrc" ]] && source "$HOME/.pythonbrew/etc/bashrc"

# RVM
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"

# php-version
export PHP_VERSIONS=$(dirname $(brew --prefix php54))
source $(brew --prefix php-version)/php-version.sh && php-version 5.4.5 >/dev/null

# Vim as default editor
export EDITOR="mvim -fv"

# Include .bash_aliases (maximum compatibility)
source ~/dotfiles/aliases/.aliases
source ~/dotfiles/aliases/.private

# Set up dircolors
eval `gdircolors $HOME/dotfiles/dircolors/dircolors.ansi-universal`

# Oh My ZSH!
source $ZSH/oh-my-zsh.sh
