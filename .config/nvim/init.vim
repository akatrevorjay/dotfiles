"version 6.0

" Debian: Use provided config if available.
"runtime! debian.vim

" Note: Skip initialization for vim-tiny or vim-small.
if 0 | endif

if has('vim_starting')
    let g:OS=substitute(system('uname -s'),"\n","","")
    let g:is_macvim_gui = has('gui_macvim') && has('gui_running')
    let g:is_win = has('win32') || has('win64')
    let g:is_nvim = has('nvim') && exists('*jobwait') && !g:is_win
    let g:is_vim8 = has('patch-8.0.0039') && exists('*job_start')

    call source#any('starting')
endif

call source#any('early')

" plug away
call plug#begin('~/.cache/vim/plugged')
call source#any('plugins')
call plug#end()

" Required: (not on neovim however)
if ! g:is_nvim
    syntax on                   " syntax highlighing
    filetype on                 " try to detect filetypes
    filetype plugin indent on   " enable loading indent file for filetype
endif

""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" vim: set ft=vim ff=unix fileencoding=utf-8 fdm=marker:
