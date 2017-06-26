#!/bin/zsh

: ${NIX_PROFILE:=$HOME/.nix-profile}
: ${NIX_PROFILE_ENV_FILE:=$NIX_PROFILE/etc/profile.d/nix.sh}
: ${NIX_AUTOLOAD:=true}

autoload -Uz add-suffix-paths bool-is-true

function nix.exists() {
    [[ -e $NIX_PROFILE_ENV_FILE ]]
}

function nix.load() {
    # quiet down +warn_create_global
    export NIX_LINK

    add-suffix-paths $NIX_PROFILE

    [[ ! -e $NIX_PROFILE_ENV_FILE ]] \
        || source $NIX_PROFILE_ENV_FILE

    [ $# -eq 0 ] || ${(@q)argv}
}

if bool-is-true $NIX_AUTOLOAD; then
    nix.load
else
    # Add in completions even if we aren't in the nix env fully. This is also done in add-suffix-paths but that's only on
    # load.
    fpath+=($NIX_PROFILE/share/zsh/site-functions)
fi

