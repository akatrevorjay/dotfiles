#!/bin/zsh

export DEBEMAIL=debian@trevor.joynson.io

(( ${+commands[nvim]} )) && : ${EDITOR:=nvim}
(( ${+commands[vim]} )) && : ${EDITOR:=vim}
(( ${+commands[vi]} )) && : ${EDITOR:=vi}
export EDITOR

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

        alias sctl='systemctl'
        alias jf='journalctl -f'
        alias jxe='journalctl -fxe'
        ;;
    darwin*)
        alias lctl='launchctl'
        alias lcload='lctl load'
        alias lcunload='lctl unload'

        alias -s app='open '
        alias -s plist='v'
        ;;
esac

history() {
    [[ $# -gt 0 ]] || set -- -100
    fc -l "$@"
}
alias h='fc -l -100'
alias hl='fc -l -L -100'

alias -g F='| fzf'
alias -g FFLT='F -f'
alias -g FSEL='F -m'
alias -g FSEL1='F -1'

alias -g FLT='FFLT'
alias -g SEL='FSEL'

alias d='docker'
alias db='d build'
alias dpl='d pull'
alias dpu='d push'
alias dps='d ps'
alias dr='d run'
alias de='d exec'

alias dc='docker-compose'
alias dcb='dc build'
alias dcp='dc pull'
alias dcr='dc run'
alias dce='dc exec'

alias m='make'

alias cx='chmod +x'
alias cw='chmod +w'
alias cr='chmod +cr'

alias S='sudo'

