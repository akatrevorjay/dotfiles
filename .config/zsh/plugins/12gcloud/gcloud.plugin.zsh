#!/bin/zsh
# Google Cloud SDK
: ${GCLOUD_SDK_ROOT:="$HOME/.local/google-cloud-sdk"}

if [[ -e $GCLOUD_SDK_ROOT ]]; then
    source $GCLOUD_SDK_ROOT/path.zsh.inc
    source $GCLOUD_SDK_ROOT/completion.zsh.inc
fi

if [[ ${+commands[kubectl]} ]]; then
    : ${_KUBECTL_INIT_CACHE:=${ZSH_CACHE_DIR:-${ZDOTDIR:-$HOME}}/.kubectl-init.zsh}
    if [[ ! -s $_KUBECTL_INIT_CACHE || ${commands[kubectl]} -nt $_KUBECTL_INIT_CACHE ]]; then
        kubectl completion zsh \
          >| $_KUBECTL_INIT_CACHE
    fi
    source $_KUBECTL_INIT_CACHE
fi
