#!/bin/zsh
# Google Cloud SDK
: ${GCLOUD_SDK_ROOT:="$HOME/.local/google-cloud-sdk"}
export GCLOUD_SDK_ROOT

# This has to be the last one unless we hack it as Google calls odd shit in here..
if [[ -e $GCLOUD_SDK_ROOT ]]; then
	source $GCLOUD_SDK_ROOT/path.zsh.inc
fi

if (( ${+commands[gcloud]} )); then
	() {
		local cache=$(zcachefile gcloud)

		# This has to be the last one unless we hack it as Google calls odd shit in here..
		if [[ ! -s $cache || ${commands[gcloud]} -nt $cache ]]; then
			egrep -v 'compinit' $GCLOUD_SDK_ROOT/completion.zsh.inc \
			>| $cache
		fi
		source $cache
	}
fi
