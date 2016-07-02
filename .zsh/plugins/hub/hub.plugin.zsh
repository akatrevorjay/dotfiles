#!/bin/zsh
if has-command hub; then
	eval "$(hub alias -s)"
else
	echo "Could not find 'hub' command. Not adding aliases." >&2
fi
