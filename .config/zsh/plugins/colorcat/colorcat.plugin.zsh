#!/bin/zsh

#fpath+=(${0:h}/functions)

# Colored up cat!
autoload -Uz colorcat
alias ccat=colorcat
alias -g C='| colorcat'

[[ ! ${+commands[pygmentize]} ]] \
    || alias cat='colorcat'

