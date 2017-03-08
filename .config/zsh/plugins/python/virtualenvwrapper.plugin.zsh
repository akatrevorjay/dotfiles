#!/bin/zsh
(( $+commands[virtualenvwrapper.sh] )) || return 1
: ${WORKON_HOME:=$HOME/.virtualenvs}
export WORKON_HOME
source $commands[virtualenvwrapper_lazy.sh]
