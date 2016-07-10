#!/bin/zsh

(( ${+commands[thefuck]} )) || return

eval "$(thefuck --alias)"

