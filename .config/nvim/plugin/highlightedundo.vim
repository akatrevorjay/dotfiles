
" disabled
" let g:highlightedundo#highlight_mode = 0

" highlights using the highlight group |hl-HighlightedundoChange|.
" let g:highlightedundo#highlight_mode = 1

" highlights in two steps using the highlight groups
" |hl-HighlightedundoDelete| and |hl-HighlightedundoAdd|.
let g:highlightedundo#highlight_mode = 2

"" User can optimize the highlighting duration of deleted and added texts by
" let g:highlightedundo#highlight_duration_delete=1000
" let g:highlightedundo#highlight_duration_add=1000

" nnoremap u     <Plug>(highlightedundo-undo)
" nnoremap <C-r> <Plug>(highlightedundo-redo)
" nnoremap U     <Plug>(highlightedundo-Undo)
" nnoremap g-    <Plug>(highlightedundo-gminus)
" nnoremap g+    <Plug>(highlightedundo-gplus)

