#!/bin/zsh

(( ${+commands[go]} )) || return 0

autoload -Uz githubize

go() {
	local sub=$1
	case $sub in
		# fuck you, go. usability 101.
		get)
			shift

			local args=(${argv:#^-*}) pkgs=(${argv:#-*})

			# At least give me SOME output. In fact I can't imagine any reason why you would
			# *ever* not want this.
			args+=(-v)

			local -U args pkgs

			local new_pkgs=($(githubize $pkgs))
			new_pkgs=(${new_pkgs#https://})
			new_pkgs=(${new_pkgs#git@})

			set -- $sub "${args[@]}" "${new_pkgs[@]}"
			;;
	esac

	command go "$@"
}
