#!/bin/zsh

# This has to be the last one unless we hack it as Google calls odd shit in here..
if [[ ${commands[rclone]} ]]; then
	() {
		local cache=$(zcachefile rclone)

		if [[ ! -s $cache || ${commands[rclone]} -nt $cache ]]; then
			rclone genautocomplete $cache
		fi
		source $cache
	}
fi
