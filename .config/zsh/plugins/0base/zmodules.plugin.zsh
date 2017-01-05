#!/bin/zsh

() {
    # Life goals
    local zmodules=(
		#zsh/attr
		zsh/db/gdbm
		#zsh/files
		zsh/zprof
        zsh/cap
        zsh/clone
        zsh/compctl
        zsh/complist
        zsh/curses
        zsh/datetime
        zsh/deltochar
        zsh/langinfo
        zsh/mapfile
        zsh/mathfunc
        zsh/net/socket
        zsh/net/tcp
        zsh/param/private
        zsh/parameter
        zsh/pcre
        zsh/regex
        zsh/rlimits
        zsh/sched
        zsh/system
        zsh/termcap
        zsh/terminfo
        zsh/zftp
        zsh/zleparameter
        zsh/zpty
        zsh/zselect
    )

    zmodload "${zmodules[@]}"
}

zmodload -F zsh/stat b:zstat
