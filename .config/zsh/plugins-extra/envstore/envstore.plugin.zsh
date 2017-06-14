(( ${+commands[envstore]} )) || return

: ${ENVSTORE_FILE:=$HOME/.envstorerc}
export ENVSTORE_FILE

function _envstore_eval() {
    eval "$(envstore eval)"
}

precmd_functions+=(_envstore_eval)
