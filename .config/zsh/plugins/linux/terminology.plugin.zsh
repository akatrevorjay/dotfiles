#!/bin/zsh

[[ -n $TERMINOLOGY ]] || return 1
[[ -z "$PYMUX$TMUX$SCREEN" ]] || return 1

fpath+=(${0:h}/functions)

export TERMINOLOGY_LS_ORIG="command ${(Q)${$(alias -m ls)#*=}:-ls}"

autoload -Uz \
    terminology-ls _terminology-ls \
    _tyls

compdef _tyls tyls
compdef _terminology-ls terminology-ls

alias ls='terminology-ls'
#compdef _terminology-ls ls
