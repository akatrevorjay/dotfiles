(( ${+commands[envstore]} )) || return

function _envstore_eval() {
    eval "$(envstore eval)"
}

precmd_functions+=(_envstore_eval)
