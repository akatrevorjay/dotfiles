
" Text editing
"set cino=:0 " No indent for case:/default:
"set shiftwidth=4
"set tabstop=4

" Interface
"set guifont=Monoissome:h12
set ruler

"let s:cpo_save=&cpo
"set cpo&vim
"vmap gx <Plug>NetrwBrowseXVis
"nmap gx <Plug>NetrwBrowseX
"vnoremap <silent> <Plug>NetrwBrowseXVis :call netrw#BrowseXVis()
"nnoremap <silent> <Plug>NetrwBrowseX :call netrw#BrowseX(expand((exists("g:netrw_gx")? g:netrw_gx : '<cfile>')),netrw#CheckIfRemote())
"let &cpo=s:cpo_save
"unlet s:cpo_save

set helplang=en
"set verbose=2
"set window=55

" Commands that shell out tend to assume a bourne shell
if executable('dash')
  set shell=dash
else
  set shell=sh
endif

set emoji

" Add templates upon new file
au BufNewFile * silent! 0r $VIMHOME/templates/%:e.tpl

let g:rustfmt_autosave = 1
let g:racer_experimental_completer = 1

nnoremap <silent> <leader>a :ArgWrap<CR>

" For conceal markers.
set conceallevel=1
set concealcursor=nc

" Always draw sign column. Prevent buffer moving when adding/deleting sign.
set signcolumn=yes

let g:indentLine_setConceal = 0
"let g:indentLine_char = 'c'
"let g:indentLine_char = '┆'
" disable by default
"let g:indentLine_enabled = 0

"" tty
"let g:indentLine_color_term = 239
"" gui
"let g:indentLine_color_gui = '#A4E57E'
"" none X terminal
""let g:indentLine_color_tty_light = 7 " (default: 4)
""let g:indentLine_color_dark = 1 " (default: 2)
""let g:indentLine_setColors = 0

map <silent><C-Space> :Buffers<CR>

function! s:RemoveLastPathComponent()
  let l:cmdlineBeforeCursor = strpart(getcmdline(), 0, getcmdpos() - 1)
  let l:cmdlineAfterCursor = strpart(getcmdline(), getcmdpos() - 1)

  let l:cmdlineRoot = fnamemodify(cmdlineBeforeCursor, ':r')
  let l:result = (l:cmdlineBeforeCursor ==# l:cmdlineRoot ? substitute(l:cmdlineBeforeCursor, '\%(\\ \|[\\/]\@!\f\)\+[\\/]\=$\|.$', '', '') : l:cmdlineRoot)
  call setcmdpos(strlen(l:result) + 1)
  return l:result . l:cmdlineAfterCursor
endfunction
cnoremap <C-BS> <C-\>e(<SID>RemoveLastPathComponent())<CR>

" vim-easy-align
" Start interactive EasyAlign in visual mode (e.g. vipga)
xmap ga <Plug>(EasyAlign)

" Start interactive EasyAlign for a motion/text object (e.g. gaip)
nmap ga <Plug>(EasyAlign)

let g:markdown_fenced_languages = [
  \ 'python', 'py=python',
  \ 'javascript', 'js=javascript',
  \ 'json',
  \ 'go', 'golang=go',
  \ 'jinja2',
  \ 'yaml',
  \ 'html', 'xhtml',
  \ 'vim', 'viml=vim',
  \ 'ruby', 'erb=eruby',
  \ 'sh', 'bash=sh', 'shell=sh',
  \ 'zsh',
  \ 'rst',
  \ 'sql',
  \ 'config', 'conf=config',
  \ 'dosini', 'ini=dosini',
  \ ]

"let g:tmuxline_theme = 'airline_visual'

let g:vimwiki_autowriteall = 0

