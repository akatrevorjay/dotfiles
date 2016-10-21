#!/bin/zsh

alias viki='vim -c VimwikiIndex'

(( ${+commands[nvim]} )) || return

alias vim='nvim'
alias nv='nvim'
alias n='nvim'

if (( ${+commands[gnvim]} )) || (( ${+aliases[gnvim]} )); then
    :
elif (( ${+commands[nvim-qt]} )); then
    alias gnvim='nvim-qt'
fi

if (( ${+commands[gnvim]} )) || (( ${+aliases[gnvim]} )); then
    alias gvim='gnvim'
fi

