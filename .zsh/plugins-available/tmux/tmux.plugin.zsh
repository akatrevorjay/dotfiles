#alias tmux="TERM=xterm-256color tmux -2 attach || TERM=xterm-256color tmux -2 -f${${(%):-%x}:a:h}/tmux.conf new"
alias tmux="TERM=xterm-256color tmux -2 attach || TERM=xterm-256color tmux -2 new"

if [[ -z $TMUX_AUTOSTART  && -n "$SSH_CONNECTION" ]]; then
    if hash tmux 2>/dev/null; then
        TMUX_AUTOSTART="true"
    fi
fi

_tmux_autostart() {
    if [[ "$TMUX_AUTOSTART" == "true" && -z "$TMUX" ]]; then
        tmux
        exit 0
    fi
    precmd_functions=(${precmd_functions#_tmux_autostart})
}

precmd_functions+=( _tmux_autostart )


#_tmux_motd() {
#    if [[ "$TMUX_MOTD" != false && ! -z "$TMUX" && $(tmux list-windows | wc -l | tr -d ' ') == 1 ]]; then
#        if [[ "$OSTYPE" == linux* || "$OSTYPE" == freebsd*  ]]; then
#            _tmux_monitor
#            return 0
#        fi
#    fi
#}

#if [[ "$TMUX_MOTD" != false ]]; then
#    _tmux_motd
#fi
