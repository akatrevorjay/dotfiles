version 6.0

" Debian: Use provided config if available.
runtime! debian.vim

" Note: Skip initialization for vim-tiny or vim-small.
if 0 | endif

if has('vim_starting')
    let g:OS=substitute(system('uname -s'),"\n","","")
    let g:is_macvim_gui = has('gui_macvim') && has('gui_running')
    let g:is_win = has('win32') || has('win64')
    let g:is_nvim = has('nvim') && exists('*jobwait') && !g:is_win
    let g:is_vim8 = has('patch-8.0.0039') && exists('*job_start')
    let g:is_gnvim_gtk = exists('g:GtkGuiLoaded')
    let g:is_vscode = exists('g:vscode')

    " FIXME any gui that may not load this
    if g:is_gnvim_gtk
        call source#any('ginit')
    endif

    call source#any('starting')
endif

if !g:is_vscode
    call source#any('early')

    " plug away
    call plug#begin('~/.cache/vim/plugged')
    call source#any('plugins')
    call plug#end()
endif

" Required: (not on neovim however)
if ! g:is_nvim
    syntax on                   " syntax highlighing
    filetype on                 " try to detect filetypes
    filetype plugin indent on   " enable loading indent file for filetype
endif

""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" vim: set ft=vim ff=unix fileencoding=utf-8 fdm=marker:
