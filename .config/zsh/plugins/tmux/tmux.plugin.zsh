#!/bin/zsh

: ${MUX_AUTOSTART_SSH:=true}
: ${MUX_AUTOSTART:=false}

has-pymux() { (( $+commands[pymux] )); }
has-tmux() { (( $+commands[tmux] )); }

if has-tmux; then
    alias mux=tmux
elif has-pymux; then
    alias mux=pymux
else
    return 1
fi

in-mux() { [ -n "$PYMUX$TMUX" ]; }

_mux_autostart() {
    precmd_functions=(${precmd_functions#_mux_autostart})

    ! in-mux || return

    if bool-is-true $MUX_AUTOSTART_SSH && [[ -n $SSH_CONNECTION ]]; then
        mux attach || mux
    elif bool-is-true $MUX_AUTOSTART; then
        mux
    fi
}

# precmd_functions+=(_mux_autostart)
_mux_autostart
