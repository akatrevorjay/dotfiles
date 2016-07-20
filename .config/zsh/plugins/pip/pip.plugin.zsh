#!/bin/zsh

(( ${+commands[pip]} )) || return

: ${_PIP_INIT_CACHE:=${ZSH_CACHE_DIR:-${ZDOTDIR:-$HOME}}/.pip-init.zsh}

if [ ${commands[pip]} -nt $_PIP_INIT_CACHE -o ! -s $_PIP_INIT_CACHE ]; then
    pip completion --zsh \
      >| $_PIP_INIT_CACHE
fi
source $_PIP_INIT_CACHE

