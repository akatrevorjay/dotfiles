
" Text editing
"set cino=:0 " No indent for case:/default:
"set shiftwidth=4
"set tabstop=4

" Interface
"set guifont=Monoissome:h12
set ruler

"set colorcolumn=120
"set autoindent
"set smarttab

nmap r q
unmap q
nmap q :q<cr>
"nmap Q :q<cr>
nmap w :w<cr>

nmap <M-s> :w<cr>
nmap <M-q> :q<cr>
nmap <M-Q> :q!<cr>

nmap W :wq<cr>
nmap ; :

vmap [% [%m'gv``
vmap ]% ]%m'gv``
vmap a% [%v]%

let s:cpo_save=&cpo
set cpo&vim
vmap gx <Plug>NetrwBrowseXVis
nmap gx <Plug>NetrwBrowseX
vnoremap <silent> <Plug>NetrwBrowseXVis :call netrw#BrowseXVis()
nnoremap <silent> <Plug>NetrwBrowseX :call netrw#BrowseX(expand((exists("g:netrw_gx")? g:netrw_gx : '<cfile>')),netrw#CheckIfRemote())
let &cpo=s:cpo_save
unlet s:cpo_save

set helplang=en
"set verbose=2
"set window=55

" Commands that shell out tend to assume a bourne shell
set shell=sh

