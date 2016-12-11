#!/bin/zsh
# Google Cloud SDK
: ${GCLOUD_SDK_ROOT:="$HOME/.local/google-cloud-sdk"}
export GCLOUD_SDK_ROOT

# This has to be the last one unless we hack it as Google calls odd shit in here..
if [[ -e $GCLOUD_SDK_ROOT ]]; then
    source $GCLOUD_SDK_ROOT/path.zsh.inc

    # This has to be the last one unless we hack it as Google calls odd shit in here..
    : ${_GCLOUD_SDK_COMP_CACHE:=${ZSH_CACHE_DIR:-${ZDOTDIR:-$HOME}}/.gcloud-sdk-init.zsh}
    if [[ ! -s $_GCLOUD_SDK_COMP_CACHE || ${commands[gcloud-sdk]} -nt $_GCLOUD_SDK_COMP_CACHE ]]; then
        egrep -v 'compinit' $GCLOUD_SDK_ROOT/completion.zsh.inc \
          >| $_GCLOUD_SDK_COMP_CACHE
    fi
    source $_GCLOUD_SDK_COMP_CACHE
fi

if (( ${+commands[kubectl]} )); then
    : ${_KUBECTL_INIT_CACHE:=${ZSH_CACHE_DIR:-${ZDOTDIR:-$HOME}}/.kubectl-init.zsh}
    if [[ ! -s $_KUBECTL_INIT_CACHE || ${commands[kubectl]} -nt $_KUBECTL_INIT_CACHE ]]; then
        kubectl completion zsh \
          | egrep -v 'compinit' \
          >| $_KUBECTL_INIT_CACHE
    fi
    source $_KUBECTL_INIT_CACHE
fi

