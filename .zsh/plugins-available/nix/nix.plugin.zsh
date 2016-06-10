
: ${NIX_PROFILE:=$HOME/.nix-profile}
: ${NIX_PROFILE_ENV_FILE:=$NIX_PROFILE/etc/profile.d/nix.sh}

[[ -e $NIX_PROFILE_ENV_FILE ]] || return

function with-nix-env() {
    #zpl dstart
	source $NIX_PROFILE_ENV_FILE
    #zpl dstop

    ${(@q)argv}

    #zpl dunload
}

#with-nix-env $@

