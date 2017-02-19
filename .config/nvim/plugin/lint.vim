
" Google's vim-coverage
Glaive coverage plugin[mappings]

"let s:registry = maktaba#extension#GetRegistry('coverage')
"call s:registry.AddExtension({
"    \ 'name': 'my_provider',
"    \ 'GetCoverage': function('myplugin#GetCoverage'),
"    \ 'GetCoverageAsync': function('myplugin#GetCoverageAsync'),
"    \ 'IsAvailable': function('myplugin#IsAvailable')})

if exists('g:loaded_ale')
    let g:ale_sign_column_always = 1

    "let g:ale_sign_error = '>>'
    "let g:ale_sign_warning = '--'

    "let g:ale_statusline_format = ['⨉ %d', '⚠ %d', '⬥ ok']

    "let g:ale_echo_msg_error_str = 'E'
    "let g:ale_echo_msg_warning_str = 'W'
    "let g:ale_echo_msg_format = '[%linter%] %s [%severity%]'

    let g:ale_set_loclist = 0
    let g:ale_set_quickfix = 1

    let g:ale_open_list = 1
    " Set this if you want to.
    " This can be useful if you are combining ALE with
    " some other plugin which sets quickfix errors, etc.
    let g:ale_keep_list_window_open = 1

    " Alias jsx to linters
    "let g:ale_linters = {'jsx': ['stylelint', 'eslint']}
    "let g:ale_linter_aliases = {'jsx': 'css'}

    nmap <silent> <C-k> <Plug>(ale_previous_wrap)
    nmap <silent> <C-j> <Plug>(ale_next_wrap)
endif
