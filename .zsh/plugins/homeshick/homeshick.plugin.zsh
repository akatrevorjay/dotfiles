#!/bin/zsh
file="$HOME/.homesick/repos/homeshick/homeshick.sh"
test -e "$file" || return
source "$file"
