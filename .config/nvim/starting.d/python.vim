" Even in non-neovim, we use these later.

" In order to use any python3 plugins, the *NeoVIM* interpreter must be set to the
" one it was compiled against. I don't seem to have this issue with python3. Hmm.

" if empty('g:workon_home')
  let g:workon_home = expand('$HOME/.virtualenvs')
  let g:neovim_virtualenv = printf('%s/neovim', g:workon_home)
" endif

let g:python_host_prog = printf('%s/bin/python2', g:neovim_virtualenv)
let g:python3_host_prog = printf('%s/bin/python3', g:neovim_virtualenv)

if !filereadable(g:python_host_prog) || !filereadable(g:python3_host_prog)
  let g:python_host_prog = 'python2'
  let g:python3_host_prog = 'python3'
endif

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

