
"" Multiple cursors
" Default mapping
"let g:multi_cursor_next_key='<C-n>'
"let g:multi_cursor_prev_key='<C-p>'
"let g:multi_cursor_skip_key='<C-x>'
"let g:multi_cursor_quit_key='<Esc>'

"" Oblique
let g:oblique#incsearch_highlight_all=1
"Gautocmd User Oblique       normal! zz
"Gautocmd User ObliqueStar   normal! zz
"Gautocmd User ObliqueRepeat normal! zz

" Ignore: default plugins {{{
" http://lambdalisue.hatenablog.com/entry/2015/12/25/000046
if ! has('nvim')
  let g:loaded_2html_plugin      = 1
  let g:loaded_getscript         = 1
  let g:loaded_getscriptPlugin   = 1
  let g:loaded_gzip              = 1
  let g:loaded_netrw             = 1
  let g:loaded_netrwFileHandlers = 1
  let g:loaded_netrwPlugin       = 1
  let g:loaded_netrwSettings     = 1
  let g:loaded_rrhelper          = 1
  let g:loaded_tar               = 1
  let g:loaded_tarPlugin         = 1
  let g:loaded_vimball           = 1
  let g:loaded_vimballPlugin     = 1
  let g:loaded_zip               = 1
  let g:loaded_zipPlugin         = 1
endif
" }}}

" NeoPairs
let g:neopairs#enable = 1

" Convenient command to see the difference between the current buffer and the
" file it was loaded from, thus the changes you made.
" Only define it when not defined already.
if !exists(':DiffOrig')
  command DiffOrig vert new | set buftype=nofile | read ++edit # | 0d_ | diffthis
        \ | wincmd p | diffthis
endif

if exists('g:loaded_echodoc')
  " Show docstrings in cmdline
  let g:echodoc_enable_at_startup = 1
endif

if exists('g:loaded_riv')
  "let rst_syntax_code_list = ['vim', 'python']
  let g:riv_python_rst_hl = 1
  let g:riv_highlight_code = 'lua,python,cpp,javascript,vim,sh,zsh'
endif

if exists('g:loaded_clever_f')
  " bind ^L reset search selection map
  nnoremap <expr><leader><esc> clever_f#reset() | nohlsearch
endif

