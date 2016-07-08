" Syntastic:

"set statusline+=%#warningmsg#
"set statusline+=%{SyntasticStatuslineFlag()}
"set statusline+=%*

"let g:syntastic_python_python_exec = '/usr/bin/env python'

"let g:syntastic_always_populate_loc_list = 1
"let g:syntastic_auto_loc_list = 1
"let g:syntastic_check_on_open = 1
"let g:syntastic_check_on_wq = 1

"let g:syntastic_enable_balloons = 1
let g:syntastic_enable_signs = 1

""let g:syntastic_auto_jump = 1
"let g:syntastic_auto_loc_list = 1
""let g:syntastic_enable_highlighting = 0
"let g:syntastic_echo_current_error = 1
""let g:syntastic_mode_map = {}
"let g:syntastic_quiet_messages = {'quiet': 'warnings'}
let g:syntastic_loc_list_height = 2

""
"" Syntastic-extras
""

" VCS
let g:syntastic_gitcommit_checkers = ['language_check']
let g:syntastic_svn_checkers = ['language_check']

let g:syntastic_cfg_checkers = ['cfg']
let g:syntastic_dosini_checkers = ['dosini']

let g:syntastic_make_checkers = ['gnumake']

" Like Syntastic's normal checker, but only checks files if there is a
" '.syntastic_c_config' file existing in the directory or an ancestor
" directory. It ignores warnings in included files by using '-isystem'
" instead of '-I'.
let g:syntastic_c_checkers = ['check']

" Like Syntastic's normal checker, but only checks files if there is a
" '.syntastic_cpp_config' file existing in the directory or an ancestor
" directory. It ignores warnings in included files by using '-isystem'
" instead of '-I'.
let g:syntastic_cpp_checkers = ['check']

" Like Syntastic's pyflakes checker, but treats messages about unused
" variables/imports as warnings rather than errors.
"let g:syntastic_python_checkers = ['pyflakes_with_warnings']
let g:syntastic_python_checkers = ['flake8']
""let g:syntastic_python_checker_args = ""

let g:syntastic_yaml_checkers = ['pyyaml']

let g:syntastic_vim_checkers = ['vint']

let g:syntastic_javascript_checkers = ['json_tool']

"" Block ZZ if there are syntax errors:"nnoremap ZZ :call syntastic_extras#quit_hook()<cr>

