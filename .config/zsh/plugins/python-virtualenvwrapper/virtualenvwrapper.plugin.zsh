#!/bin/zsh
(( $+commands[virtualenvwrapper_lazy.sh] )) || return 1
source $commands[virtualenvwrapper_lazy.sh]
