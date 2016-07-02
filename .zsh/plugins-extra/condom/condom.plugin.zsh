#!/bin/zsh

#[[ "$UID" -gt 0 ]] || return

case "${OSTYPE:l}" in
	# No condoms for you, you sly devil.
	# (osx just doesn't support these opts reliably.)
	darwin*)
		alias chmod='chmod -v'
		alias chown='chown -v'
		# from gnubin
		#! (( ${+commands[grm]} )) || alias rm='grm --preserve-root -vdI'
		;;

	linux*)
		alias chmod='chmod --preserve-root --changes'
		alias chown='chown --preserve-root --changes'
		alias rm='rm --preserve-root -vdI'
		;;
esac

if (( ${+commands[gomi]} )); then
	alias rm='gomi'
elif (( ${+commands[sm]} )); then
	alias rm='sm -vh'
elif (( ${+commands[safe-rm]} )) && (( ! ${+commands[safe-rmdir]} )); then
	alias rm='safe-rm -v'
fi

