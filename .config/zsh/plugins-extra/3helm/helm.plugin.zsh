#!/bin/zsh

# helm does not support zsh yet
return 0

if (( ${+commands[helm]} )); then
	() {
		local cache=$(zcachefile helm)

		if [[ ! -s $cache || ${commands[helm]} -nt $cache ]]; then
			helm completion zsh \
			| egrep -v 'compinit' \
			>| $cache
		fi
		emulate bash -c 'source "$cache"'
	}
fi
