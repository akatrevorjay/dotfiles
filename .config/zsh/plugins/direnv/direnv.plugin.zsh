(( ${+commands[direnv]} )) || return

eval "$(direnv hook zsh)"
