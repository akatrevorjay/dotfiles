#!/bin/zsh

setopt check_jobs hup  # posix_jobs
setopt auto_resume multios

setopt nullglob
unsetopt nomatch

export \
	DEBEMAIL="debian@trevor.joynson.io" \
	DEBFULLNAME="Trevor Joynson (Debian)" \
	GPGKEY="C9871F640" \
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

# report timing stats if max res set size is greater than this (mB)
REPORTMEMORY=512

# report timing stats if command takes longer than this (secs)
REPORTTIME=10

