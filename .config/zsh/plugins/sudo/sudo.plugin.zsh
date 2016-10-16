
# https://github.com/hcgraf/zsh-sudo/raw/master/sudo.plugin.zsh

sudo-command-line() {
    [[ -z $BUFFER ]] && zle up-history
    if [[ $BUFFER == sudo\ * ]]; then
        LBUFFER="${LBUFFER#sudo }"
    else
        LBUFFER="sudo $LBUFFER"
    fi
}
zle -N sudo-command-line

# Defined shortcut keys: [Esc] [Esc]
#bindkey "\e\e" sudo-command-line
#bindkey -M vicmd '\e\e' sudo-command-line

smart_sudo () {
    if [[ -n $1 ]]; then
            sudo $argv
    else
        #if no parameters were given, then assume we want a root shell
        sudo -s
        #sudo -i
    fi
}

# the trailing space causes the next word to be checked for alias expansion
alias s='smart_sudo ' 
compdef _sudo smart_sudo
