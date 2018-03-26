#!/bin/zsh

() {
	local cmd=gopass

	(( ${+commands[$cmd]} )) || continue

	local cache
	cache=$(zcachefile $cmd)

	if [ ${commands[$cmd]} -nt $cache -o ! -s $cache ]; then
		$cmd completion zsh \
			>| $cache
	fi
	source $cache
}

