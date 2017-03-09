
"let $PYENV_VERSION = 'neovim-3.5.1:neovim-2.7.11'

" Even in non-neovim, we use these later.

" In order to use any python3 plugins, the *NeoVIM* interpreter must be set to the
" one it was compiled against. I don't seem to have this issue with python3. Hmm.

"let g:python_host_prog = 'python2'
"let g:python3_host_prog = 'python3'

let g:python_host_prog = expand('~/.virtualenvs/neovim/bin/python2')
let g:python3_host_prog = expand('~/.virtualenvs/neovim/bin/python3')

if has('nvim')
  " Skip the check of neovim module
  "let g:python3_host_skip_check = 1
  "let g:python_host_skip_check = 1
else
  let g:ycm_python_binary_path = g:python3_host_prog
  let g:ycm_server_python_interpreter = g:python_host_prog

  " ycmd
  let g:ycm_path_to_python_interpreter = g:python3_host_prog

  "let g:ycm_python_binary_path = 'python2'

  "let g:ycm_python_binary_path = 'python3'
  "let g:ycm_server_python_interpreter = 'python3'
endif

""let g:pyenv#pyenv_exec = expand('~/.pyenv/bin/pyenv')
"let g:pyenv#python_exec = expand('~/.pyenv/shims/python')
""let g:pyenv#python_exec = expand('python3')

"if g:pyenv#pyenv#get_activated_env()
"    let g:pyenv#auto_create_ctags = 1 yapf --style google --style='{column_limit: 120, DEDENT_CLOSING_BRACKETS: true}'
"    let g:pyenv#auto_assign_ctags = 1
"endif
"}}}

"if jedi#init_python()
"  function! s:jedi_auto_force_py_version() abort
"    let major_version = pyenv#python#get_internal_major_version()
"    call jedi#force_py_version(major_version)
"  endfunction
"  augroup vim-pyenv-custom-augroup
"    autocmd! *
"    autocmd User vim-pyenv-activate-post   call s:jedi_auto_force_py_version()
"    autocmd User vim-pyenv-deactivate-post call s:jedi_auto_force_py_version()
"  augroup END
"endif

