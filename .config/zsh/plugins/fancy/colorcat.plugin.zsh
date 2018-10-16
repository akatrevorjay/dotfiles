#!/bin/zsh

# Colored up cat!
autoload -Uz colorcat
alias ccat=colorcat
alias -g C='| colorcat'

(( ! ${+commands[chroma]} ))  \
    || alias cat='colorcat'

