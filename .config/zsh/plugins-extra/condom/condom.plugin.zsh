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

		function () {
			# Trash can for everything.
			local libtrash=${_TRASHIFY_PRELOAD:-/usr/local/lib/libtrash.so}
			[[ -e $libtrash ]] || return
			alias trashify="LD_PRELOAD=$libtrash"
			alias rm="trashify ${(Q)${$(alias -m rm)#*=}:-rm}"
		}
		;;
esac

# These are just okay. Use them if they exist, I guess.
if (( ${+aliases[rm]} )); then
	:
elif (( ${+commands[gomi]} )); then
	alias rm='gomi'
elif (( ${+commands[trash-cli]} )); then
	alias rm='trash-cli'
elif (( ${+commands[sm]} )); then
	alias rm='sm -vh'
elif (( ${+commands[safe-rm]} )); then
	alias rm='safe-rm -v'
fi

