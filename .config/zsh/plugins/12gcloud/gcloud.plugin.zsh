#!/bin/zsh
# Google Cloud SDK
: ${GCLOUD_SDK_ROOT:="$HOME/.local/google-cloud-sdk"}
[[ -e $GCLOUD_SDK_ROOT ]] || return 1

source $GCLOUD_SDK_ROOT/path.zsh.inc
source $GCLOUD_SDK_ROOT/completion.zsh.inc
