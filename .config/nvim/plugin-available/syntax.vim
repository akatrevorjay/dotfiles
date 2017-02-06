" AWS: filetypes (aws.json)
let g:AWSVimValidate = 1

" JSON:
Gautocmdft json set autoindent
Gautocmdft json set formatoptions=tcq2l
"Gautocmdft json set textwidth=78 shiftwidth=2
Gautocmdft json set shiftwidth=2
Gautocmdft json set softtabstop=2 tabstop=8
Gautocmdft json set expandtab
Gautocmdft json set foldmethod=syntax

Gautocmdft javascript set tabstop=2
Gautocmdft javascript set shiftwidth=2

Gautocmdft vim let g:argwrap_line_prefix = '\'

Gautocmdft sh,zsh,bash set noexpandtab

Gautocmdft html set tabstop=2
Gautocmdft html set shiftwidth=2
"Close tag
Gautocmdft html inoremap <C-K> </<C-X><C-O><Esc>

Gautocmdft python let b:argwrap_tail_comma = 1

let g:python_highlight_all = 1

