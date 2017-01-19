
(( ${+commands[terraform]} )) || return

fpath+=(${0:h}/functions)

function zplugins.terraform.update-completion() {
	local url="https://github.com/hashicorp/terraform/raw/master/contrib/zsh-completion/_terraform"
	local cache=$(zcachefile terraform)

	if [ ${commands[terraform]} -nt $cache -o ! -s $cache ]; then
		echo "- Downloading new terraform completion" >&2
		curl -sSLFo $cache.part "$url" \
			&& mv $cache.part $cache
	fi
}

autoload -Uz _terraform
