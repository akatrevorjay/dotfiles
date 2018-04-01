#!/bin/zsh

() {
	local cmd=gopass

	(( ${+commands[$cmd]} )) || continue

	local cache=${LOCAL_ZDOTDIR:?}/completions/_${cmd:?}

	if [ ${commands[$cmd]} -nt $cache -o ! -s $cache ]; then
		$cmd completion zsh \
			>| $cache
	fi
}

