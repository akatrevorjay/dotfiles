" AWS: filetypes (aws.json)
let g:AWSVimValidate = 1

" Grabbag:

Gautocmdft json set autoindent expandtab formatoptions=tcq2l shiftwidth=2 softtabstop=2 tabstop=8 foldmethod=syntax expandtab

Gautocmdft javascript set tabstop=2 shiftwidth=2

Gautocmdft vim let g:argwrap_line_prefix = '\'

Gautocmdft sh,zsh,bash set noexpandtab

Gautocmdft c,cpp set noexpandtab

Gautocmdft html set tabstop=2 shiftwidth=2
"Close tag
Gautocmdft html inoremap <C-K> </<C-X><C-O><Esc>

Gautocmdft python let b:argwrap_tail_comma = 1
let g:python_highlight_all = 1

Gautocmdft log exec ':AnsiEsc'
