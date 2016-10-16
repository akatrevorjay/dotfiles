#!/bin/zsh
: ${FZF_ALL_OPTS:="--tiebreak=begin,index --ansii --color=dark --cycle --toggle-sort=ctrl-r"}

: ${FZF_DEFAULT_OPTS:=$FZF_ALL_OPTS}

: ${FZF_CTRL_R_OPTS:-$FZF_ALL_OPTS}
: ${FZF_CTRL_T_OPTS:-$FZF_ALL_OPTS}
: ${FZF_ALT_C_OPTS:-$FZF_ALL_OPTS}

local fzf_path="$GOPATH/src/github.com/junegunn/fzf"

[[ -d $fzf_path ]] || return 1

autoload -Uz add-prefix-paths source-with-force

add-prefix-paths $fzf_path

# quiet down +warn_create_global
local binding fzf_default_completion

source-with-force $fzf_path/shell/*.zsh

unset fzf_path

#bindkey '\ef' fzf-file-widget
#bindkey '\e
