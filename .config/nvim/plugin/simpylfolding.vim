
" Enable previewing of folded class/function docstrings
let g:SimpylFold_docstring_preview = 1

"" Enable autocmd for py files
"Gautocmd BufWinEnter *.py setlocal foldexpr=SimpylFold(v:lnum) foldmethod=expr
"Gautocmd BufWinLeave *.py setlocal foldexpr< foldmethod<

