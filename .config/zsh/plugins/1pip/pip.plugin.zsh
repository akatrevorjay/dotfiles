#!/bin/zsh

() {
	local pip_cmd pip_cache
	for pip_cmd in pip{,2,3}; do
		(( ${+commands[$pip_cmd]} )) || continue
		pip_cache=$(zcachefile $pip_cmd)

		if [ ${commands[$pip_cmd]} -nt $pip_cache -o ! -s $pip_cache ]; then
			pip completion --zsh \
			| sed -e 's@pip@'"$pip_cmd"'@g' \
			>| $pip_cache
		fi
		source $pip_cache
	done
}

