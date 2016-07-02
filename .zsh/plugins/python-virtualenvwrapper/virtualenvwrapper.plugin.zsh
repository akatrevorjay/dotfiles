#!/bin/zsh
function () {
	local p="$1"
	for p in "$@"; do
		[[ -e "$p" ]] || continue
		source "$p"
		break
	done
} "/usr/share/virtualenvwrapper/virtualenvwrapper.sh"
