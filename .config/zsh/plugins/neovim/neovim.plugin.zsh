#!/bin/zsh

alias viki='vim -c VimwikiIndex'

(( ${+commands[nvim]} )) || return

alias vim='nvim'
