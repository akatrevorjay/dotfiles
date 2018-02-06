#!/bin/zsh

lolbar() {
	(( ${+commands[spark]} )) || return

	local cols=$(tput cols)
	local bar=$(seq 1 $cols | sort -R | spark)

	if (( ${+commands[lolcat]} )); then
		lolcat <<< $bar
	else
		echo $bar
	fi

	echo; echo
}

clear() {
	command clear
	echo; echo
	lolbar
}

lollinit-random-git-tip() {
	(( ${+commands[git-tip]} )) || return
	git-tip || :
	echo
}

lollinit-random-quote() {
    (( ${+commands[random-quote]} )) || return
	random-quote || :
	echo
}

# lollinit-random-git-tip
lollinit-random-quote
# lolbar

