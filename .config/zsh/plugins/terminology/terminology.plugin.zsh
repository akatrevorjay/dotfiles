#!/bin/zsh

[[ -n "$TERMINOLOGY" && -z "$TMUX$SCREEN" ]] || return

alias terminology-ls-orig="command ${(Q)${$(alias -m ls)#*=}:-ls}"

autoload -Uz \
    terminology-ls _terminology-ls \
    _tyls

compdef _tyls tyls
compdef _terminology-ls terminology-ls

alias ls=terminology-ls
compdef _terminology-ls ls
