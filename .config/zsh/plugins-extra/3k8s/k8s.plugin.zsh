#!/bin/zsh

if (( ${+commands[kubectl]} )); then
	() {
		local cache=$(zcachefile kubectl)

		if [[ ! -s $cache || ${commands[kubectl]} -nt $cache ]]; then
			kubectl completion zsh \
			| egrep -v 'compinit' \
			>| $cache
		fi
		source $cache
	}
fi

if (( ${+commands[kops]} )); then
	() {
		local cache=$(zcachefile kops)

		if [[ ! -s $cache || ${commands[kops]} -nt $cache ]]; then
			kops completion zsh \
			| egrep -v 'compinit' \
			>| $cache
		fi
		source $cache
	}
fi

if (( ${+commands[kompose]} )); then
	() {
		local cache=$(zcachefile kompose)

		if [[ ! -s $cache || ${commands[kompose]} -nt $cache ]]; then
			kompose completion zsh \
			| egrep -v 'compinit' \
			>| $cache
		fi
		source $cache
	}
fi
