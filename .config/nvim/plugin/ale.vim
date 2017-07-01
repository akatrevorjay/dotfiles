let g:ale_lint_on_save = 1
let g:ale_sign_column_always = 1
let g:ale_python_flake8_args = ''

let g:ale_linters = {
  \ 'nix': ['nix-instantiate'],
  \ 'go': ['gofmt -e', 'go vet', 'golint', 'gometalinter', 'go build', 'gosimple', 'staticcheck'],
  \ 'html': ['HTMLHint', 'proselint', 'tidy'],
  \ 'css': ['csslint', 'stylelint'],
  \ 'Dockerfile': ['hadolint'],
  \ 'python': [
    \ 'flake8',
    \ 'yapf',
    \ 'isort',
  \ ],
  \ 'javascript': ['eslint', 'jscs', 'jshint', 'flow', 'standard', 'prettier'],
  \ 'vim': ['vint'],
  \ 'sql': ['sqlint'],
\ }

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
let g:ale_lint_on_enter = 0

" The default is freaking 200ms?!?
"let g:ale_lint_delay = 2000

"let g:ale_open_list = 1
" Set this if you want to.
" This can be useful if you are combining ALE with
" some other plugin which sets quickfix errors, etc.
"let g:ale_keep_list_window_open = 1

"let g:ale_set_loclist = 0
"let g:ale_set_quickfix = 1

