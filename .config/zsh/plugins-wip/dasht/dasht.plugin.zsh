#!/bin/zsh

() {
    local src=$1
    [[ -e $src/.git ]] || return

    autoload -Uz add-suffix-paths
    add-suffix-paths $src
} ${0:h:a}/src

