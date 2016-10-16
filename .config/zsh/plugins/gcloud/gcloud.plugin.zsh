#!/bin/zsh
# Google Cloud SDK
local app_path=$HOME/.local/google-cloud-sdk
[[ -e $app_path ]] || return 1
source $app_path/path.zsh.inc
source $app_path/completion.zsh.inc
