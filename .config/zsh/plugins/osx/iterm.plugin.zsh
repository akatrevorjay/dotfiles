#!/bin/zsh

[[ $OSTYPE:l = darwin* ]] || return 0

# quiet down +warn_create_global
export ITERM2_PRECMD_PS1

test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"

