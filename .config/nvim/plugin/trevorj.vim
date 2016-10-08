
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

" Add templates upon new file
au BufNewFile * silent! 0r $VIMHOME/templates/%:e.tpl

augroup Shebang
  autocmd BufNewFile *.py 0put =\"#!/usr/bin/env python\<nl># -*- coding: utf8 -*-\<nl>\"|$

  autocmd BufNewFile *.sh 0put =\"#!/usr/bin/env bash\<nl># -*- coding: utf8 -*-\<nl>set -eo pipefail\<nl>\"|$
  autocmd BufNewFile *.zsh 0put =\"#!/usr/bin/env zsh\<nl># -*- coding: utf8 -*-\<nl>set -eo pipefail\<nl>\"|$

  autocmd BufNewFile *.rb 0put =\"#!/usr/bin/env ruby\<nl># -*- coding: utf8 -*-\<nl>\"|$

  autocmd BufNewFile *.tex 0put =\"%&plain\<nl>\"|$
  autocmd BufNewFile *.\(cc\|hh\) 0put =\"//\<nl>// \".expand(\"<afile>:t\").\" -- \<nl>//\<nl>\"|2|start!
augroup END
