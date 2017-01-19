version 6.0

" Debian: Use provided config if available.
"runtime! debian.vim

" Note: Skip initialization for vim-tiny or vim-small.
if 0 | endif

let g:is_initvim = 1
source ~/.config/nvim/rc.vim

""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" vim: set ft=vim ff=unix fileencoding=utf-8 fdm=marker:
