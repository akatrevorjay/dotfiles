if has('nvim')
  let $NVIM_TUI_ENABLE_CURSOR_SHAPE=1
  set guicursor=n-v-c:block-Cursor/lCursor-blinkon0,i-ci:ver25-Cursor/lCursor,r-cr:hor20-Cursor/lCursor
else
  if &compatible
      set nocompatible  " Be iMproved
  endif
endif

if has('termguicolors') && empty($TERMINOLOGY)
  set termguicolors
endif
