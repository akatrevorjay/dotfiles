#!/bin/zsh

export DEBEMAIL=debian@trevor.joynson.io

# GPG 2.1.x SSH support
# See : http://incenp.org/notes/2015/gnupg-for-ssh-authentication.html
export SSH_AUTH_SOCK="$HOME/.gnupg/S.gpg-agent.ssh"

