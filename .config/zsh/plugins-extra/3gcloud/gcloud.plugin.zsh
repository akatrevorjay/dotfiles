#!/bin/zsh

autoload -Uz source-with-force

() {
	# Google Cloud SDK
	local root=${GCLOUD_SDK_ROOT:-"$HOME/.local/google-cloud-sdk"}
	[[ -e $root ]] || return

	source-with-force $root/path.zsh.inc $root/completion.zsh.inc
}

