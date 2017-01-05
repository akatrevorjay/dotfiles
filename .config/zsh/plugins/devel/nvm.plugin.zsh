: ${NVM_DIR:="$HOME/.nvm"}
[[ -d $NVM_DIR ]] || return 0

export NVM_DIR

[ -s $NVM_DIR/nvm.sh ] && source $NVM_DIR/nvm.sh
