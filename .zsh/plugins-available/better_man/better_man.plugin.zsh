#!/bin/zsh

-colored-man() {
	local width=$(tput cols)
	[[ $width -gt $MANWIDTH ]] && width=$MANWIDTH

	env \
	  LESS_TERMCAP_mb=$(printf "\e[1;31m") \
	  LESS_TERMCAP_md=$(printf "\e[1;31m") \
	  LESS_TERMCAP_me=$(printf "\e[0m") \
	  LESS_TERMCAP_se=$(printf "\e[0m") \
	  LESS_TERMCAP_so=$(printf "\e[1;44;33m") \
	  LESS_TERMCAP_ue=$(printf "\e[0m") \
	  LESS_TERMCAP_us=$(printf "\e[1;32m") \
	  PAGER="${commands[less]:-$PAGER}" \
	  _NROFF_U=1 \
	  MANWIDTH=$width \
	  \man "$@"
}

if [[ "$CURRENT_SHELL" == "zsh" ]]; then
	alias help=run-help
fi

-better-man () {
	local cmdtype help
	case "$CURRENT_SHELL" in
		zsh)
			cmdtype="$(type -w "$1" | sed -e 's/^[^:]\+: //'):$1"
            help='run-help'
			;;
		bash|*)
			cmdtype="$(type -t "$1"):$1"
            help='help'
			;;
	esac

	case "$cmdtype" in
		# built-in
		builtin:*|reserved:*)
			$help "$1" | "${PAGER:-less}"
			;;
		# bash: pattern
		*[[?*]*)
			$help "$1" | "${PAGER:-less}"
			;;
		# something else, presumed to be an external command or options for the man command or a section number
		*)
			-colored-man "$@"
			;;
	esac
}

#alias man=-better-man

man() {
    -better-man "$@"
}

