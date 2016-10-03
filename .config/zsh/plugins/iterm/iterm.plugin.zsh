#!/bin/zsh

[[ $OSTYPE:l = darwin* ]] || return 1

test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"

