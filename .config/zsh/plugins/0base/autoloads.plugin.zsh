#!/bin/zsh

autoload -Uz autoload-all-in
# Oh yes, this is what you think it is.
autoload-all-in {$LOCAL_ZDOTDIR,$ZDOTDIR}/functions ${(@)fpath}

! (( ${+aliases[run-help]} )) || unalias run-help
alias help=run-help
