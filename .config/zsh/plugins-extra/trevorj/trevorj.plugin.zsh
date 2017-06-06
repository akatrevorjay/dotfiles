#!/bin/zsh

export \
	GPGKEY="C9871F640"
export \
	DEBEMAIL="debian@trevor.joynson.io" \
	DEBFULLNAME="Trevor Joynson (Debian)"
export \
	DEBSIGN_KEYID="$GPGKEY"
	DEB_BUILD_OPTIONS="parallel=9"

PROJECTS_ROOT=$HOME/git
CODE_ROOT=$HOME/code
BUILD_ROOT=$HOME/build
REPO_ROOTS=($PROJECTS_ROOT $CODE_ROOT $BUILD_ROOT)

setopt monitor check_jobs hup  # posix_jobs
setopt auto_resume multios

alias -s git='git-cdclone'

(( ${+commands[nvim]} )) && : ${EDITOR:=nvim}
(( ${+commands[vim]} )) && : ${EDITOR:=vim}
(( ${+commands[vi]} )) && : ${EDITOR:=vi}
export EDITOR

alias v='vi'

# Disable control flow (<C-s> / <C-q>)
#stty stop '' -ixoff -ixon

## Don't raise errors when regex nomatch fires
#unsetopt nomatch

# GPG 2.1.x SSH support
# See : http://incenp.org/notes/2015/gnupg-for-ssh-authentication.html
#export SSH_AUTH_SOCK="$HOME/.gnupg/S.gpg-agent.ssh"

# Default docker machine
#: ${DOCKER_MACHINE_NAME:="dev"}

# WHy CAn't I TYpe SHift?
alias Grep='grep'
alias Less='less'

alias -g G='| grep'
alias -g GU='| grep $USER'
alias -g GV='| grep -v'
alias -g GIV='| grep -iv'
alias -g GI='| grep -i'

alias -g A='| awk'
for i in {1..15}; alias -g C${i}="| awk '{print \$${i}}'"

alias -g F='| fzf'
alias -g FFLT='F -f'
alias -g FSEL='F -m'
alias -g FSEL1='F -1'

alias -g FLT='FFLT'
alias -g SEL='FSEL'

alias -g L='| less'
alias -g LR='| less -R'

#history() {
#	 [[ $# -gt 0 ]] || set -- -100
#	 fc -l "$@"
#}
alias h='fc -l -100'
alias hl='fc -l -L -100'

# Note on precommand modifiers
# builtin			The command word is taken to be the name of a builtin
#					command, rather than a shell function or external command.
# command [-pvV]	The command word is an external command and not a shell
#					builtin or function
# nocorrect			No spelling correction made on any word
# noglob			File name generation is not performed on any of the words
alias ng=noglob
alias nc=nocorrect
alias ng=noglob


alias k='k -h'
alias fk='k --no-vcs'

#alias l='ls -lh'
#alias ll='ls -lhA'
#alias lsd='ls -ld *(-/DN)'
#alias lsa='ls -ld .*'

#if (( ${+commands[exa]} )); then
#	 alias exa='exa --group-directories-first'
#	 #alias l='exa -G'
#	 alias k='exa'
#	 alias g='exa -G'
#	 alias ll='exa -lh@ --git'
#	 alias l='ll'
#else
	alias l='ls'
	alias ll='l -l'
#fi

alias k='ll'
alias la='l -a'
alias lla='ll -a'

alias lsd='ls -d *(-/DN)'
alias lsf='ls -d .*'
alias lld='ll -d *(-/DN)'
alias llf='ll -d .*'


alias dk='docker'
alias dkb='docker build'
alias dkpl='docker pull'
alias dkpu='docker push'
alias dkps='docker ps'
alias dkr='docker run -it'
alias dke='docker exec -it'

# Yeah, fuck the arbitrary precision calculator
alias dc='docker-compose'
alias dco='docker-compose'
alias dcb='docker-compose build'
alias dcp='docker-compose pull'
alias dcr='docker-compose run'
alias dcR='docker-compose run --service-ports'
alias dce='docker-compose exec'
alias dcps='docker-compose ps'
alias dcup='docker-compose up'
alias dcbup='docker-compose up --build --pull'
alias dcdn='docker-compose down'
alias dcrm='docker-compose rm'
alias dcl='docker-compose logs -f'
alias dcL='docker-compose logs'

alias m='make'

alias cx='chmod +x'
alias cw='chmod +w'
alias cr='chmod +cr'

alias S='sudo'

alias du='du -hcs'
alias df='df -h'

alias rh='rehash'

alias j='jobs -l'

alias bc='bc -q -l'

alias gdb='gdb -q'
alias tf='tail -f'

alias cp='nocorrect cp -piv'
alias mkdir='nocorrect mkdir'
alias mv='nocorrect mv -iv'

alias pu='pushd'
alias po='popd'

case $OSTYPE:l in
	linux*)
		alias sctl='systemctl'
		alias jf='journalctl -f'
		alias jxe='journalctl -fxe'

		alias dmesg='dmesg -e -x -d -T'
		alias dmesgf='dmesg -w'

		alias pstree='pstree -ahglnpsSuU'
		;;
	darwin*)
		appify() {
			local fn=${1:?}
			local name=${2:-${1:t}}
			local app=$name.app
			local dest=$app/Contents/MacOS/$name

			if [ -a $app ]; then
				echo "Already exists: $a{(qq)pp}" >&2
				return 1
			fi

			mkdir -pv "${dest:h}";
			ln -svf ${fn:a} $dest
		}

		alias lctl='launchctl'
		alias lcload='lctl load'
		alias lcunload='lctl unload'

		alias -s app='open '
		alias -s plist='v'
		;;
esac

if (( ${+commands[git-tip]} )); then
	git-tip || :
fi
