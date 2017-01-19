#!/bin/zsh

-colored-man() {
	LESS_TERMCAP_mb=$(printf '\e[1;31m') \
	LESS_TERMCAP_md=$(printf '\e[1;31m') \
	LESS_TERMCAP_me=$(printf '\e[0m') \
	LESS_TERMCAP_se=$(printf '\e[0m') \
	LESS_TERMCAP_so=$(printf '\e[1;44;33m') \
	LESS_TERMCAP_ue=$(printf '\e[0m') \
	LESS_TERMCAP_us=$(printf '\e[1;32m') \
	_NROFF_U=1 \
	PAGER=less \
	command man "$@"
}

-better-man () {
	local kind="$(type -w -- $1 | sed -e 's/^[^:]\+: //'):$1"
	case $kind in
		# built-in
		builtin:*|reserved:*)
			run-help $1
			;;
		# bash: pattern
		*[[?*]*)
			run-help $1
			;;
		# something else, presumed to be an external command or options for the man command or a section number
		*)
			-colored-man $@
			;;
	esac
}

#alias man=-better-man

man() {
	-better-man $@
}

