
(( ${+commands[terraform]} )) || return

fpath+=(${0:h}/functions)

: ${_TERRAFORM_COMP_CACHE:=${ZSH_CACHE_DIR:-${ZDOTDIR:-$HOME}}/.terraform-init.zsh}

function () {
    local url="https://github.com/hashicorp/terraform/raw/master/contrib/zsh-completion/_terraform"

    if [ ${commands[terraform]} -nt $_TERRAFORM_COMP_CACHE -o ! -s $_TERRAFORM_COMP_CACHE ]; then
        echo "- Downloading new terraform completion"
        curl -sL "$url" > ${_TERRAFORM_COMP_CACHE}.part
        mv ${_TERRAFORM_COMP_CACHE}.part $_TERRAFORM_COMP_CACHE
    fi
}

autoload -Uz _terraform
