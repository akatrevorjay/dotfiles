#!/bin/zsh
if (( ${+commands[hub]} )); then
	eval "$(hub alias -s)"

	: ${_HUB_COMPLETIONS:="$GOPATH/src/github.com/github/hub/etc/hub.zsh_completion"}
	if [[ -e "$_HUB_COMPLETIONS" ]]; then
		source "$_HUB_COMPLETIONS"
	else
		echo "Could not find 'hub' completions at _HUB_COMPLETIONS=$_HUB_COMPLETIONS" >&2
	fi
else
	echo "Could not find 'hub' command. Not adding aliases." >&2
fi
