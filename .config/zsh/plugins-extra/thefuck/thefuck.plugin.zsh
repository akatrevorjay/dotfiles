#!/bin/zsh

(( ${+commands[thefuck]} )) || return

: ${_THEFUCK_INIT_CACHE:=${ZSH_CACHE_DIR:-${ZDOTDIR:-$HOME}}/.thefuck-init.zsh}

if [ ${commands[thefuck]} -nt $_THEFUCK_INIT_CACHE -o ! -s $_THEFUCK_INIT_CACHE ]; then
    thefuck --alias \
      >| $_THEFUCK_INIT_CACHE
fi
source $_THEFUCK_INIT_CACHE

