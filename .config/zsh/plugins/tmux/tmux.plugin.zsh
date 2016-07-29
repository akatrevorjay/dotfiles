#!/bin/zsh

(( $+commands[tmux] )) || return 1

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
#        if [[ "$OSTYPE" = linux* || "$OSTYPE" == freebsd*  ]]; then
#            _tmux_monitor
#            return 0
#        fi
#    fi
#}

#if [[ "$TMUX_MOTD" != false ]]; then
#    _tmux_motd
#fi


# complete words from tmux pane(s) {{{1
# Source: http://blog.plenz.com/2012-01/zsh-complete-words-from-tmux-pane.html
_tmux_pane_words() {
  local expl
  local -a w
  if [[ -z "$TMUX_PANE" ]]; then
    _message "not running inside tmux!"
    return 1
  fi
  # capture current pane first
  w=( ${(u)=$(tmux capture-pane -J -p)} )
  for i in $(tmux list-panes -F '#P'); do
    # skip current pane (handled above)
    [[ "$TMUX_PANE" = "$i" ]] && continue
    w+=( ${(u)=$(tmux capture-pane -J -p -t $i)} )
  done
  _wanted values expl 'words from current tmux pane' compadd -a w
}

zle -C tmux-pane-words-prefix   complete-word _generic
zle -C tmux-pane-words-anywhere complete-word _generic
bindkey '^X^Tt' tmux-pane-words-prefix
bindkey '^X^TT' tmux-pane-words-anywhere
zstyle ':completion:tmux-pane-words-(prefix|anywhere):*' completer _tmux_pane_words
zstyle ':completion:tmux-pane-words-(prefix|anywhere):*' ignore-line current
# display the (interactive) menu on first execution of the hotkey
zstyle ':completion:tmux-pane-words-(prefix|anywhere):*' menu yes select interactive
zstyle ':completion:tmux-pane-words-anywhere:*' matcher-list 'b:=* m:{A-Za-z}={a-zA-Z}'
# }}}
