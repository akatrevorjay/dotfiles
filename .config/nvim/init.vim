version 8.0

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

    call source#any('starting')
endif
call source#any('early')

" declare plugins
"silent!
call plug#begin('~/.cache/vim/plugged')

Plug (g:is_nvim) ? '~/.local/nvim' : '~/.local/vim'

call source#any('plugins')

" Register on_plugs
" TODO: Testing this idea before deciding how to go.
"execute "Gautocmd User * :runtime! 'plugins.d/on_load/'.expand('<amatch>').'.vim'"
"execute "Gautocmd User '*' :echo 'plugins.d/on_load/'.expand('<amatch>').'.vim'"
for k in keys(g:plugs)
    execute 'Gautocmd User '.k.' :execute "runtime! plugins.d/on_load/".k.".vim"'
endfor

"autocmd User join(keys(g:plugs), ','),* runtime! 'plugins.d/on_load/<amatch>.vim'

" Plug away
call plug#end()

" Required: (not on neovim however)
syntax on                   " syntax highlighing
filetype on                 " try to detect filetypes
filetype plugin indent on   " enable loading indent file for filetype

""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" vim: set ft=vim ff=unix fileencoding=utf-8 fdm=marker:
