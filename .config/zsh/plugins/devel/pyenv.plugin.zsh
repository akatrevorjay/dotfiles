#!/bin/zsh

: ${PYENV_ROOT:=$HOME/.pyenv}
[[ -d $PYENV_ROOT:A ]] || return

pyenv-shell() {
    PYENV_ACTIVATE=1 $ZSH_ARGZERO "$@"
}

if [[ -n $PYENV_ACTIVATE ]]; then
    path=($PYENV_ROOT/bin $path)
    source <(pyenv init -)
fi
