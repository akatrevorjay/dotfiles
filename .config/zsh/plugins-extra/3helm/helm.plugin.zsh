#!/bin/zsh

(( ${+commands[helm]} )) || return

autoload -Uz zcachefile

() {
	local cache=$(zcachefile helm)

	if [[ ! -s $cache || ${commands[helm]} -nt $cache ]]; then
		helm completion zsh \
		| egrep -v 'compinit' \
		>| $cache
	fi
	source $cache
}
