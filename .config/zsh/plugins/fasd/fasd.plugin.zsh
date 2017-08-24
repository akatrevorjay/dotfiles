#!/bin/zsh

if [[ $#_FASD_INIT_OPTS -eq 0 ]]; then
    _FASD_INIT_OPTS=(
        zsh-hook
        zsh-ccomp
        zsh-ccomp-install
        zsh-wcomp
        zsh-wcomp-install
    )
fi

source-with-force ${0:h}/lib/fasd.plugin.zsh

# Handy aliases:
#alias vf="f -e $EDITOR"
#alias vm='f -t -e vim -b viminfo'
#alias o='a -e open_command'

# Key bindings:
#bindkey '^X^A' fasd-complete    # C-x C-a to do fasd-complete (files and directories)
#bindkey '^X^F' fasd-complete-f  # C-x C-f to do fasd-complete-f (only files)
#bindkey '^X^D' fasd-complete-d  # C-x C-d to do fasd-complete-d (only directories)

