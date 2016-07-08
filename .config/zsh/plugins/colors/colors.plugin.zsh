#!/bin/zsh

#
# ls
#

if (( ${+commands[dircolors]} )); then
    # GNU
	local file="$HOME/.dircolors"
	eval "$(test -r "$file" && dircolors -b "$file" || dircolors -b)"

    alias ls='ls -Fuhs -ctr --color=auto --group-directories-first'
else
    # BSD

    # colors for ls and completion
    export LSCOLORS='exfxcxdxbxGxDxabagacad'
    export LS_COLORS='di=34:ln=35:so=32:pi=33:ex=31:bd=36;01:cd=33;01:su=31;40;07:sg=36;40;07:tw=32;40;07:ow=33;40;07:'

    alias ls='ls -G -Fuh -GOsBo'
fi

#
# grep
#

export GREP_COLOR='37;45'             #BSD
export GREP_COLORS="mt=${GREP_COLOR}" #GNU
alias grep='grep --color=auto'
alias fgrep='fgrep --color=auto'
alias egrep='egrep --color=auto'

alias -g G='| grep'

# diff
[[ ! ${+commands[colordiff]} ]] \
    || alias diff='colordiff'

