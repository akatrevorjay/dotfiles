# #!/bin/zsh
if has-command hub; then
	function () {
		local hub_path=${HUB_PATH:-$GOPATH/src/github.com/github/hub}
		[[ ! -d "$hub_path/man" ]] || manpath+=($hub_path/man)
	}
	eval "$(hub alias -s)"
fi
