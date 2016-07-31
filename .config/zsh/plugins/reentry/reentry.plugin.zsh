#!/usr/bin/env zsh
# https://github.com/RobSis/zsh-reentry-hook/raw/master/zsh-reentry-hook.plugin.zsh

# Plugin that re-enters working directory
# if it has been removed and re-created.
# http://github.com/RobSis/zsh-reentry-hook

[[ -o interactive ]] || return #interactive only
autoload -Uz add-zsh-hook || { print "can't add zsh hook!"; return }

if stat --version &> /dev/null && [[ -n $(stat --version |& grep GNU) ]] ; then
	reentry_hook_stat () {
		stat -c '%h' .
	}
else
	# Assume that we are dealing with a BSD variant.
	reentry_hook_stat () {
		stat -f '%l' .
	}
fi

reentry_hook() {
    if [[ `reentry_hook_stat` -eq 0 && -d "$PWD" ]]; then
        builtin cd .
    fi
}

add-zsh-hook preexec reentry_hook
