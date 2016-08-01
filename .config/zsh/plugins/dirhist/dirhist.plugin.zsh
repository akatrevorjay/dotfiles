#!/bin/zsh
# Saves history per directory as well as the main file.
zshaddhistory() {
    print -sr -- ${1%%$'\n'}
    fc -p .zsh_local_history
}

