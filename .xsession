#!/bin/zsh
set -eo pipefail
set -xv

set -o nullglob


function user_xsession_d() {
	local dir=$HOME/.xsession.d
	[[ -d $dir ]] || return 0

	# use run-parts to source every file in the session directory; we source
	# instead of executing so that the variables and functions defined above
	# are available to the scripts, and so that they can pass variables to each
	# other
	local raw=$(run-parts --list $dir)
	local fns=(${(f)raw})

	local fn
	for fn in $fns; do
		local rv=0
		. $fn || rv=$?

		if [[ ! $? ]]; then
			echo "Failed to source fn=$fn" >&2
			return 1
		fi
	done
}

user_xsession_d


export XDG_CURRENT_DESKTOP=i3
exec i3

