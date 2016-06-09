#!/bin/zsh

alias grep='grep --color=auto'
alias fgrep='fgrep --color=auto'
alias egrep='egrep --color=auto'
alias -g G='| grep'

alias ls='ls --color=auto'

[[ ! ${+commands[colordiff]} ]] \
    || alias diff='colordiff'

# dircolors
local file="$HOME/.dircolors"
[ ${+commands[dircolors]} ] \
    && [[ -r "$HOME/.dircolors" ]] \
    && eval "$(test -r "$file" && dircolors -b "$file" || dircolors -b)"

