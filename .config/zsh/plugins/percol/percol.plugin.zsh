function ppgrep() {
    if [[ $1 == "" ]]; then
        PERCOL=percol
    else
        PERCOL="percol --query $1"
    fi
    ps aux | eval $PERCOL | awk '{ print $2 }'
}

function ppkill() {
    if [[ $1 =~ "^-" ]]; then
        QUERY=""            # options only
    else
        QUERY=$1            # with a query
        [[ $# > 0 ]] && shift
    fi
    ppgrep $QUERY | xargs kill $*
}

#if (( ${+commands[percol]} )); then
#    function percol_select_history() {
#        local tac
#        exists gtac && tac="gtac" || { exists tac && tac="tac" || { tac="tail -r" } }
#        BUFFER=$(fc -l -n 1 | eval $tac | percol --query "$LBUFFER")
#        CURSOR=$#BUFFER         # move cursor
#        zle -R -c               # refresh
#    }
#
#    zle -N percol_select_history
#    bindkey '^R' percol_select_history
#fi
