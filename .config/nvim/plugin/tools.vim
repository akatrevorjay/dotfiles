
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

if exists('g:loaded_conflicted')
  " Use `gl` and `gu` rather than the default conflicted diffget mappings
  let g:diffget_local_map = 'gl'
  let g:diffget_upstream_map = 'gu'
  set stl+=%{ConflictedVersion()}
endif

" Disable one diff window during a three-way diff allowing you to cut out the
" noise of a three-way diff and focus on just the changes between two versions
" at a time. Inspired by Steve Losh's Splice
function! DiffToggle(window)
  " Save the cursor position and turn on diff for all windows
  let l:save_cursor = getpos('.')
  windo :diffthis
  " Turn off diff for the specified window (but keep scrollbind) and move
  " the cursor to the left-most diff window
  exe a:window . "wincmd w"
  diffoff
  set scrollbind
  set cursorbind
  exe a:window . "wincmd " . (a:window == 1 ? "l" : "h")
  " Update the diff and restore the cursor position
  diffupdate
  call setpos('.', l:save_cursor)
endfunction
" Toggle diff view on the left, center, or right windows
nmap <silent> <leader>dl :call DiffToggle(1)<cr>
nmap <silent> <leader>dc :call DiffToggle(2)<cr>
nmap <silent> <leader>dr :call DiffToggle(3)<cr>

function! s:setup_auto_git_diff() abort
    nmap <buffer><C-l> <Plug>(auto_git_diff_scroll_manual_update)
    nmap <buffer><C-n> <Plug>(auto_git_diff_scroll_down_half)
    nmap <buffer><C-p> <Plug>(auto_git_diff_scroll_up_half)
endfunction
autocmd FileType gitrebase call <SID>setup_auto_git_diff()

