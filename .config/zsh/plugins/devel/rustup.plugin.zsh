#!/bin/zsh

(( ${+commands[rustup]} )) || return

() {
	local cache=${LOCAL_ZDOTDIR:?}/completions/_rustup
	mkdir -pv $cache:h

	if [[ ! -s $cache || ${commands[rustup]} -nt $cache ]]; then
		rustup completions zsh >| $cache
	fi
} || echo "Failed to write rustup completion" >&2

