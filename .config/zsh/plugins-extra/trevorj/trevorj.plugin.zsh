#!/bin/zsh

export DEBEMAIL=debian@trevor.joynson.io

# GPG 2.1.x SSH support
# See : http://incenp.org/notes/2015/gnupg-for-ssh-authentication.html
#export SSH_AUTH_SOCK="$HOME/.gnupg/S.gpg-agent.ssh"

# Default docker machine
#: ${DOCKER_MACHINE_NAME:="dev"}

# WHy CAn't I TYpe SHift?
alias Grep='grep'
alias Less='less'

builtin bindkey "^R" fzf-history-widget

alias -g GV='| grep -v'
alias -g GIV='| grep -iv'
alias -g GI='| grep -i'

PROJECT_ROOT=$HOME/git
CODE_ROOT=$HOME/code
BUILD_ROOT=$HOME/build
REPO_ROOTS=($PROJECT_ROOT $CODE_ROOT $BUILD_ROOT)

alias -s git='git-cdclone'

alias -g L='| less'
alias -g LR='| less -R'

alias v='vi'

alias -g A='| awk'
for i in {1..15}; alias -g C${i}="| awk '{print \$${i}}'"

case $OSTYPE:l in
    linux*)
        layout() {
            local layout=${1:-workman}

            case $layout in
                wm|w) layout=workman ;;
                u) layout=us ;;
            esac

            setxkbmap -model apple -layout $layout -option '' -option 'lv5:caps,switch lock.misc:extend,compose:menu,grp:shifts_toggle' -v 9
            xset -r 66
        }

        for i in us u workman wm w; alias $i="layout $i"

        ;;
    darwin*)
        ;;
esac
