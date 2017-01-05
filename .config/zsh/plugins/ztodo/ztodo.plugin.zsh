(( $+functions[ztodo] )) || return 0

: ${ZTODO_CHPWD_LIST:=true}

function -ztodo-chpwd() {
    ztodo || return 0
    [[ $ZTODO_CHPWD_LIST != 'true' ]] || ztodo list
}

chpwd_functions+=(-ztodo-chpwd)

