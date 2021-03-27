#!/bin/zsh

setopt check_jobs hup  # posix_jobs
setopt auto_resume multios

setopt nullglob
unsetopt nomatch

export \
	DEBFULLNAME="Trevor Joynson (Debian)" \
	DEBEMAIL="debian@trevor.joynson.io" \
	GPGKEY="9871F640" \
	DEB_BUILD_OPTIONS="parallel=9" \
	LAUNCHPAD_ID="trevorjay"
export DEBSIGN_KEYID="$GPGKEY"

PROJECTS_ROOT=$HOME/git
CODE_ROOT=$HOME/code
BUILD_ROOT=$HOME/build
REPO_ROOTS=($PROJECTS_ROOT $CODE_ROOT $BUILD_ROOT)

(( ${+commands[nvim]} )) && : ${EDITOR:=nvim}
(( ${+commands[vim]} )) && : ${EDITOR:=vim}
(( ${+commands[vi]} )) && : ${EDITOR:=vi}
export EDITOR

gpg-ssh-agent || :

# report timing stats if max res set size is greater than this (kB)
REPORTMEMORY=$((512 * 1024))

# report timing stats if command takes longer than this (secs)
REPORTTIME=10

# report timing memory in addition to cpu stats
TIMEFMT='[%J]  %U user %S system %P cpu %*E max_rss %M total'

# This is used by deoplete-zsh
zmodload zsh/zpty

bindkey -r '^B'

(( ! ${+functions[zbrowse]} )) || \
	bindkey '^V' zbrowse

: ${BAT_THEME:="Monokai Extended"}
export BAT_THEME

