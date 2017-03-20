#!/bin/zsh

: ${NIX_PROFILE:=$HOME/.nix-profile}
: ${NIX_PROFILE_ENV_FILE:=$NIX_PROFILE/etc/profile.d/nix.sh}
: ${NIX_AUTOLOAD:=true}

function nix.exists() {
    [[ -e $NIX_PROFILE_ENV_FILE ]]
}

function nix.load() {
    # quiet down +warn_create_global
    export NIX_LINK

    source $NIX_PROFILE_ENV_FILE
    [ $# -eq 0 ] || ${(@q)argv}
}

autoload -Uz bool-is-true
if bool-is-true $NIX_AUTOLOAD; then
    nix.load
fi
