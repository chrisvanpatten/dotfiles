# .bash_aliases

# Add an "alert" alias for long running commands.  Use like so:
#   sleep 10; alert
alias alert='notify-send --urgency=low -i "$([ $? = 0 ] && echo terminal || echo error)" "$(history|tail -n1|sed -e '\''s/^\s*[0-9]\+\s*//;s/[;&|]\s*alert$//'\'')"'

# enable color support of grep
if [ "$TERM" != "dumb" ] && [ -x /usr/bin/dircolors ]; then
	eval "`dircolors -b`"

	alias grep='grep --color=auto'
fi

# ls
alias ls='ls -CGF'
alias l='ls -CGF'

# More ls
alias ll='ls -al'
alias la='ls -A'

# Dictionary
alias dict="dict -d wn"

# GPG
alias gpgo="gpg --symmetric --personal-cipher-preferences "AES256""

# SSH aliases
alias vpmssh="ssh chris@97.107.141.200"
alias cruella="ssh chris@97.107.141.200"
alias pongo="ssh -p 9012 chris@50.116.59.75"
alias perdita="ssh -p 9982 chris@50.116.59.73"

# Git Aliases
alias gs="git status"
alias gp="git push"
alias ga="git add -A"
alias gc="git commit"
alias gk="git commit"