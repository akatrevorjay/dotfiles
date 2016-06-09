
if [[ "$OSTYPE" = solaris* ]]
then
	if [[ ! -x "$HOME/bin/nroff" ]]
	then
		mkdir -p "$HOME/bin"
		cat > "$HOME/bin/nroff" <<-EOF
		#!/bin/sh
		if [ -n "\$_NROFF_U" -a "\$1,\$2,\$3" = "-u0,-Tlp,-man" ]; then
			shift
			exec /usr/bin/nroff -u\$_NROFF_U "\$@"
		fi
		#-- Some other invocation of nroff
		exec /usr/bin/nroff "\$@"
		EOF
		chmod +x "$HOME/bin/nroff"
	fi
fi

__colored_man() {
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
		PATH="$HOME/bin:$PATH" \
		command -p man "$@"
}

if [[ "$CURRENT_SHELL" == "zsh" ]]; then
	alias help=run-help
fi

__better_man () {
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
	e "type=$cmdtype help=$help"

	case "$cmdtype" in
		# built-in
		builtin:*|reserved:*)
            debug "builtin"
			$help "$1" | "${PAGER:-less}"
			;;
		# bash: pattern
		*[[?*]*)
            debug "bash pattern"
			$help "$1" | "${PAGER:-less}"
			;;
		# something else, presumed to be an external command or options for the man command or a section number
		*)
            debug "default"
			__colored_man "$@"
			;;
	esac
}

#alias man=__better_man

man() {
    __better_man "$@"
}

