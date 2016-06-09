#!/bin/zsh

alias -g grep='grep --color=auto'
alias -g fgrep='fgrep --color=auto'
alias -g egrep='egrep --color=auto'

[[ ! ${+commands[colordiff]} ]] \
    || alias diff='colordiff'

# dircolors
local file="$HOME/.dircolors"
[ ${+commands[dircolors]} ] \
    && [[ -r "$HOME/.dircolors" ]] \
    && eval "$(test -r "$file" && dircolors -b "$file" || dircolors -b)"

