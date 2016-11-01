if has('nvim')
  let $NVIM_TUI_ENABLE_CURSOR_SHAPE=1
else
    if &compatible
        set nocompatible  " Be iMproved
    endif
endif

if has('nvim') && empty($TERMINOLOGY)
    " Truecolor in the term or the gui. NeoVim <3
    let $NVIM_TUI_ENABLE_TRUE_COLOR=1
else
    set t_Co=256
endif

set background=dark
