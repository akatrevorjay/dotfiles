"if !exists('g:loaded_ale')
"  finish
"endif

let g:ale_linters = {
  \ 'nix': ['nix-instantiate'],
  \ 'go': ['gofmt -e', 'go vet', 'golint', 'gometalinter', 'go build', 'gosimple', 'staticcheck'],
  \ 'html': ['HTMLHint', 'proselint', 'tidy'],
  \ 'css': ['csslint', 'stylelint'],
  \ 'Dockerfile': ['hadolint'],
  \ 'python': ['flake8', 'isort', 'yapf'],
  \ 'javascript': ['eslint', 'jscs', 'jshint', 'flow', 'standard', 'prettier'],
  \ 'vim': ['vint'],
  \ 'sql': ['sqlint'],
\ }

" Alias jsx to linters
"let g:ale_linter_aliases = {'jsx': 'css'}

" Set this. Airline will handle the rest.
let g:airline#extensions#ale#enabled = 1

let g:ale_echo_msg_error_str = 'E'
let g:ale_echo_msg_warning_str = 'W'
let g:ale_echo_msg_format = '[%linter%] %s [%severity%]'

nmap <silent> <C-k> <Plug>(ale_previous_wrap)
nmap <silent> <C-j> <Plug>(ale_next_wrap)

" Write this in your vimrc file
let g:ale_lint_on_text_changed = 'never'

" You can disable this option too
" if you don't want linters to run on opening a file
"let g:ale_lint_on_enter = 0

" The default is freaking 200ms?!?
let g:ale_lint_delay = 5000

let g:ale_python_mypy_executable = 'nice -n19 ionice -c3 mypy'

let g:ale_open_list = 1

let g:ale_set_loclist = 0
let g:ale_set_quickfix = 1

let g:ale_sign_column_always = 1
"let g:ale_python_flake8_args = ''

" Set this if you want to.
" This can be useful if you are combining ALE with
" some other plugin which sets quickfix errors, etc.
let g:ale_keep_list_window_open = 1

"let g:ale_statusline_format = ['⨉ %d', '⚠ %d', '⬥ ok']
"
"let g:ale_sign_error = '✖'
"let g:ale_sign_warning = '⚠'

"let g:ale_sign_error = emoji#for('skull')
"let g:ale_sign_warning = emoji#for('warning')

"let g:ale_sign_error = 'x'
"let g:ale_sign_warning = 'i'

"let g:ale_sign_warning = '👍'
"let g:ale_sign_warning = '❄'
"let g:ale_sign_error = '❌'

"let g:ale_sign_error = '>>'
"let g:ale_sign_warning = '--'

