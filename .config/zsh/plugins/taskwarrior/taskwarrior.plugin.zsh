(( ${+commands[task]} )) || return

fpath+=(${0:h}/functions)

alias t=task
#compdef t=task
alias vtw='vim -c TW'
