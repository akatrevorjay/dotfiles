
" TODO Not sure if gui_macvim is only supported in the gui or not in MacVim.
if ! has('macvim')
  finish
endif

if has('gui_macvim')
  Plug 'nathanaelkane/vim-command-w'
endif

Plug 'rizzatti/dash.vim'

