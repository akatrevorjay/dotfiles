#!/bin/zsh

(( ${+commands[thefuck]} )) || return

() {
	setopt local_options err_return pipefail
	local cache=$(zcachefile thefuck)

	if [ ${commands[thefuck]} -nt $cache -o ! -s $cache ]; then
		thefuck --alias \
		>| $cache
	fi
	source $cache
} || :
