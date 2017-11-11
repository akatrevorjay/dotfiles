#!/bin/zsh

## Set GPG TTY
export GPG_TTY=$(tty)

gpg-refresh-agent() {
    ## Refresh gpg-agent tty in case user switches into an X session
    if (( ${+commands[gpg-connect-agent]} )); then
        gpg-connect-agent updatestartuptty /bye >/dev/null
    fi
}

gpg-ssh-agent() {
    if ! (( ${+commands[gpgconf]} )); then
        echo "[$0] gpgconf binary not found" >&2
        return 1
    fi

    unset SSH_AGENT_PID
    export SSH_AUTH_SOCK="$(gpgconf --list-dirs agent-ssh-socket)"
}

# Set SSH to use gpg-agent
#if [[ -z $SSH_AUTH_SOCK ]]; then
#    gpg-ssh-agent
#fi
