version 6.0

" Debian: Use provided config if available.
runtime! debian.vim

" Note: Skip initialization for vim-tiny or vim-small.
if 0 | endif

if has('vim_starting')
	let OS=substitute(system('uname -s'),"\n","","")
	call source#any('starting')
endif

call source#any('early')

" declare plugins
"silent!
call plug#begin('~/.cache/vim/plugged')
call source#any('plugins')
call plug#end()

" Required: (not on neovim however)
syntax on                   " syntax highlighing
filetype on                 " try to detect filetypes
filetype plugin indent on   " enable loading indent file for filetype

""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" vim: set ft=vim ff=unix fileencoding=utf-8 fdm=marker:
