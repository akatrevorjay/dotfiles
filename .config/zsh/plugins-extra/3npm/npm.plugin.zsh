#!/bin/zsh
#
if (( ${+commands[npm]} )); then
	() {
		local cache=$(zcachefile npm)

		if [[ ! -s $cache || ${commands[npm]} -nt $cache ]]; then
			npm completion zsh \
			| egrep -v 'compinit' \
			>| $cache
		fi
		source $cache
	}
fi

