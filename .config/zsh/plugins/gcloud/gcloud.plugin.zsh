#!/bin/zsh
# Google Cloud SDK
function () {
	local app_path=$1
	[[ -e "$app_path" ]] || return
	source "$app_path/path.zsh.inc"
	source "$app_path/completion.zsh.inc"
} "$HOME/.local/google-cloud-sdk"

