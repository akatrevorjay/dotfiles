
(( ! ${+commands[nfasd]} && ! ${+commands[register-python-argcomplete-menu]} )) \
    || return 1

eval "$(register-python-argcomplete-menu nfasd)"

alias n='nfasd -e nvim'
alias ny='nfasd -e nyaovim'
