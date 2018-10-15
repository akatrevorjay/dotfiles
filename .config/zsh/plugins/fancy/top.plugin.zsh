#!/bin/zsh

() {
	local fn=$HOME/.toprc
	[[ ! -e $fn ]] || return

	if [ ${commands[top]} -nt $fn -o ! -s $fn ]; then
		(( ${+commands[top]} )) || return
		(( ${+commands[dpkg]} )) || return

		local topver=$(
			dpkg -l procps | tail -n1 | sed -rne 's@^.+\s+procps\s+([^ \s]+)\s+.*$@\1@p'
		)
		topver=${topver#*:}

		local major=${topver%%.*}
		[[ -n $major ]] || return

		local try=($fn-v$major(.-N))

		local src
		for src in $try; do
			[[ -e $src ]] || continue

			cp -av $src $fn
			break
		done
	fi
}

