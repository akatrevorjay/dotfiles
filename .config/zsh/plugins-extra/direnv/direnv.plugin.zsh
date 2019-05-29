if ! (( ${+commands[direnv]} )); then
    echo "[direnv] not found in path." >&2
    return
fi

eval "$(direnv hook zsh)"
