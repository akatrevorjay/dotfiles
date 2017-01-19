#!/bin/zsh
file="$HOME/.homesick/repos/homeshick/homeshick.sh"
test -e "$file" || return 0
source "$file"
