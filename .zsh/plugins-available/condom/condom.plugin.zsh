#!/bin/zsh

#[[ "$UID" -gt 0 ]] || return

#
# Always wear a condom
#

alias chmod='chmod --preserve-root --changes'
alias chown='chown --preserve-root --changes'
alias rm='rm --preserve-root -vdI'

# not aliasing rm -i, but if safe-rm is available, use condom.
if (( ${+commands[sm]} )) && (( ! ${+commands[sm]} )); then
    alias rm='sm -vh'
elif (( ${+commands[safe-rm]} )) && (( ! ${+commands[safe-rmdir]} )); then
    alias rm='safe-rm -v'
fi

#
# Misc
#

mkcd() {
    [[ -n ${1} ]] && mkdir -p ${1} && builtin cd ${1}
}

# WHy CAn't I TYpe SHift? :hate:
alias Grep='grep'
alias Less='less'

