#!/bin/zsh

() {
    # Life goals
    local zmodules=(\
        #zsh/attr \
        zsh/cap \
        zsh/clone \
        zsh/compctl \
        zsh/complist \
        zsh/curses \
        zsh/datetime \
        #zsh/db/gdbm \
        #zsh/files \
        zsh/langinfo \
        zsh/mapfile \
        zsh/mathfunc \
        zsh/net/socket \
        zsh/net/tcp \
        zsh/param/private \
        zsh/parameter \
        zsh/pcre \
        zsh/regex \
        zsh/rlimits \
        zsh/sched \
        zsh/stat \
        zsh/system \
        #zsh/zprof \
        zsh/zpty \
        zsh/zselect \
    )

    zmodload "${zmodules[@]}"
}

