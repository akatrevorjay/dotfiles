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
