#!/usr/bin/env zsh

zfs-exists zpool-exists() {
	${0%%-*} get -H name $1 #>/dev/null 2>&1
}

zfs-list zpool-list () {
		local cmd=(${(s:-:)0} -H)

		local -U props=()
		zparseopts -D -K -E 'p+:=props'
		props=(${(s:,:)props#-p})
		props=($=props)

		$cmd -o "${(j:,:)props}" "$@"
}

