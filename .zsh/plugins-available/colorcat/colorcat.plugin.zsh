#!/bin/zsh

# Colored up cat!
autoload -Uz colorcat
alias -g ccat=colorcat

[[ ! ${+commands[pygmentize]} ]] \
    || alias cat='colorcat'

