#!/bin/zsh
if (( ${+commands[hub]} )); then
	eval "$(hub alias -s)"

	local completions=${_HUB_COMPLETIONS:-"$GOPATH/src/github.com/hub/etc/hub.completions.zsh"}
	[[ ! -f "$completions" ]] || source "$completions"
else
	echo "Could not find 'hub' command. Not adding aliases." >&2
fi
