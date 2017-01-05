#!/bin/zsh
if (( ${+commands[hub]} )); then
	eval "$(hub alias -s)"

	: ${_HUB_COMPLETIONS:="$GOPATH/src/github.com/github/hub/etc/hub.zsh_completion"}
	if [[ ! -e "$LOCAL_ZDOTDIR/completions/_hub" ]]; then
		if [[ -e "$_HUB_COMPLETIONS" ]]; then
			echo "Creating symlink for hub completions" >&2
			mkdir -pv $LOCAL_ZDOTDIR/completions
			ln -sfv $_HUB_COMPLETIONS $LOCAL_ZDOTDIR/completions/_hub
		else
			echo "Could not find 'hub' completions at _HUB_COMPLETIONS=$_HUB_COMPLETIONS" >&2
		fi
	fi
#else
#    echo "Could not find 'hub' command. Not adding aliases." >&2
fi
