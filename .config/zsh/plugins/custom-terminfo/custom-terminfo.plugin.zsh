#!/bin/zsh

function () {
    local f="$SHELL_CONF_DIR/$TERM.ti"
    [[ -f "$f" ]] || return 0
    tic "$f"
}

