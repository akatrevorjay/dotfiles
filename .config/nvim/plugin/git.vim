if &diff
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

    " map ] ]c
    " map [ [c

    hi DiffAdd    ctermfg=233 ctermbg=LightGreen guifg=#003300 guibg=#DDFFDD gui=none cterm=none
    hi DiffChange ctermbg=white  guibg=#ececec gui=none   cterm=none
    hi DiffText   ctermfg=233  ctermbg=yellow  guifg=#000033 guibg=#DDDDFF gui=none cterm=none

    finish
endif

let g:gitgutter_enabled = 1
let g:gitgutter_eager = 0
let g:gitgutter_realtime = 0
let g:gitgutter_async = 1
"let g:gitgutter_sign_column_always = 1
"let g:gitgutter_max_signs = 1000
"let g:gitgutter_map_keys = 1
"let g:gitgutter_override_sign_column_highlight = 0

"let g:gitgutter_sign_added = 'xx'
"let g:gitgutter_sign_modified = 'yy'
"let g:gitgutter_sign_removed = 'zz'
"let g:gitgutter_sign_removed_first_line = '^^'
"let g:gitgutter_sign_modified_removed = 'ww'

let g:gitgutter_sign_added = '++'
let g:gitgutter_sign_modified = '~~'
let g:gitgutter_sign_removed = '--'
let g:gitgutter_sign_modified_removed = '~-'

nmap ]h <Plug>GitGutterNextHunk
nmap [h <Plug>GitGutterPrevHunk

nmap <Leader>ha <Plug>GitGutterStageHunk
nmap <Leader>hr <Plug>GitGutterUndoHunk

nmap <Leader>hv <Plug>GitGutterPreviewHunk

omap ih <Plug>GitGutterTextObjectInnerPending
omap ah <Plug>GitGutterTextObjectOuterPending
xmap ih <Plug>GitGutterTextObjectInnerVisual
xmap ah <Plug>GitGutterTextObjectOuterVisual

function! NextHunkAllBuffers()
  let line = line('.')
  GitGutterNextHunk
  if line('.') != line
    return
  endif

  let bufnr = bufnr('')
  while 1
    bnext
    if bufnr('') == bufnr
      return
    endif
    if !empty(GitGutterGetHunks())
      normal! 1G
      GitGutterNextHunk
      return
    endif
  endwhile
endfunction

function! PrevHunkAllBuffers()
  let line = line('.')
  GitGutterPrevHunk
  if line('.') != line
    return
  endif

  let bufnr = bufnr('')
  while 1
    bprevious
    if bufnr('') == bufnr
      return
    endif
    if !empty(GitGutterGetHunks())
      normal! G
      GitGutterPrevHunk
      return
    endif
  endwhile
endfunction

nmap <silent> ]c :call NextHunkAllBuffers()<CR>
nmap <silent> [c :call PrevHunkAllBuffers()<CR>

if exists('g:loaded_nerdtree')
  let g:NERDTreeShowGitStatus = 1
endif
