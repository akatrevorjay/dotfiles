# Unsure
setopt autoresume autocd autoresume
setopt longlistjobs
#setopt globcomplete globsubst globassign
#setopt vi

setopt correct correctall

# aliases
alias v='vim'
alias vi='vim'

alias ls="${(Q)${$(alias -m ls)#*=}:-ls --colors=auto} -Fuh -B"
alias l='ls'
alias la='ls -A'
alias ll='ls -l'
alias lg='ls -g'
alias lla='ll -A'

