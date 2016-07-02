#!/bin/zsh
function () {
	local fasd_cache="$ZSH_CACHE_DIR/fasd-init-zsh"
	if [ "${commands[fasd]}" -nt "$fasd_cache" -o ! -s "$fasd_cache" ]; then
		fasd --init \
		  posix-alias \
		  zsh-hook \
		  zsh-ccomp zsh-ccomp-install \
		  zsh-wcomp zsh-wcomp-install \
		  >| "$fasd_cache"
	fi
	source "$fasd_cache"

	alias v="f -e $EDITOR"
	alias o='a -e open_command'
}
