" Even in non-neovim, we use these later.

" In order to use any python3 plugins, the *NeoVIM* interpreter must be set to the
" one it was compiled against. I don't seem to have this issue with python3. Hmm.

"let g:python_host_prog = 'python2'
"let g:python3_host_prog = 'python3'

let g:python_host_prog = expand('~/.virtualenvs/neovim/bin/python2')
let g:python3_host_prog = expand('~/.virtualenvs/neovim/bin/python3')

"if has('nvim')
"  " Skip the check of neovim module
"  "let g:python3_host_skip_check = 1
"  "let g:python_host_skip_check = 1
"endif

let g:ycm_python_binary_path = g:python3_host_prog
let g:ycm_server_python_interpreter = g:python3_host_prog
let g:ycm_path_to_python_interpreter = g:python3_host_prog

"let g:ycm_python_binary_path = 'python3'
"let g:ycm_python_binary_path = 'python3'
"let g:ycm_server_python_interpreter = 'python3'

