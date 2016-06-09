function () {
	local fzf_path="$GOPATH/src/github.com/junegunn/fzf"
	[[ -d "$fzf_path" ]] || return
	manpath+=("$fzf_path/man")

	[[ $- == *i* ]] && source "$fzf_path/shell/completion.zsh" 2>/dev/null
	source "$fzf_path/shell/key-bindings.zsh"
}
