if has('nvim')
  let $NVIM_TUI_ENABLE_CURSOR_SHAPE=1
  set guicursor=n-v-c:block-Cursor/lCursor-blinkon0,i-ci:ver25-Cursor/lCursor,r-cr:hor20-Cursor/lCursor

  if empty($TERMINOLOGY)
    " Truecolor in the term or the gui. NeoVim <3
    let $NVIM_TUI_ENABLE_TRUE_COLOR=1
  endif
else
    if &compatible
        set nocompatible  " Be iMproved
    endif
endif

