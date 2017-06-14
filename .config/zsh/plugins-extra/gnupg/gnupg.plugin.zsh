#!/bin/zsh

## Set GPG TTY
#export GPG_TTY=$(tty)

## Refresh gpg-agent tty in case user switches into an X session
gpg-connect-agent updatestartuptty /bye >/dev/null

gpg-ssh-agent() {
    unset SSH_AGENT_PID
    export SSH_AUTH_SOCK="$(gpgconf --list-dirs agent-ssh-socket)"
}

# Set SSH to use gpg-agent
if [[ -z $SSH_AUTH_SOCK ]]; then
    gpg-ssh-agent
fi
