# Paths
PATH="~/platform-tools:$PATH"
DOTFILES="$HOME/dotfiles"

# Vim
export EDITOR='vim'

# Load .bash_colors
[[ -s "$DOTFILES/bash/.bash_colors" ]] && source "$DOTFILES/bash/.bash_colors"

# Load aliases
[[ -s "$DOTFILES/aliases/pongo.vanpattenmedia.com" ]] && source "$DOTFILES/aliases/pongo.vanpattenmedia.com"
[[ -s "$DOTFILES/aliases/.aliases" ]] && source "$DOTFILES/aliases/.aliases"
[[ -s "~/.rvm/scripts/rvm" ]] && source "~/.rvm/scripts/rvm"

# Load .private
[[ -s "$DOTFILES/aliases/.private" ]] && source "$DOTFILES/aliases/.private"

PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting
