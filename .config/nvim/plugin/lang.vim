
" Language: Go {{{
let g:go_highlight_error = 1
let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_structs = 1
let g:go_highlight_interfaces = 1
let g:go_highlight_operators = 1
let g:go_highlight_build_constraints = 1
let g:go_fmt_command = "goimports"

au FileType go nmap <leader>rt <Plug>(go-run-tab)
au FileType go nmap <Leader>rs <Plug>(go-run-split)
au FileType go nmap <Leader>rv <Plug>(go-run-vertical)

let g:go_term_mode = "split"

let g:syntastic_go_checkers = ['golint', 'govet', 'errcheck']
let g:syntastic_mode_map = { 'mode': 'active', 'passive_filetypes': ['go'] }
" }}}

" Autoformat on F3
noremap <F3> :Autoformat<CR>

" Python: {{{
"let python_no_number_highlight = 1
"let python_no_builtin_highlight = 1
"let python_no_exception_highlight = 1
"let python_no_doctest_highlight = 1
"let python_space_error_highlight = 1
let python_highlight_all = 1

let g:formatdef_yapf = '"yapf -".(g:DoesRangeEqualBuffer(a:firstline, a:lastline) ? " --lines ".a:firstline."-".a:lastline : "")." ".(&textwidth ? "--style {COLUMN_LIMIT: ".&textwidth."}" : "")'
let g:formatters_python = ['yapf']
" }}}
" Rope: {{{
"map <leader>j :RopeGotoDefinition<CR>
"map <leader>r :RopeRename<CR>

"let g:ropevim_vim_completion = 1
"let g:ropevim_extended_complete = 1
" }}}

"let g:cpsm_highlight_mode = 'detailed' " none, basic, detailed

" clang-format
" Ref: http://algo13.net/clang/clang-format-style-oputions.html
" FIXME: Optios not works?
let g:clang_format#code_style = 'google'
let g:clang_format#detect_style_file = 1
let g:clang_format#auto_format = 1

" C: {{{
let c_gnu = 1
let c_comment_strings = 1
let c_space_errors = 1
"let c_no_trail_space_error = 1
"let c_no_tab_space_error = 1
"let c_no_bracket_error = 1
"let c_no_curly_error = 1
let c_curly_error = 1
"let c_no_ansi = 1
"let c_ansi_typedefs = 1
"let c_ansi_constants = 1
"let c_no_utf = 1
"let c_syntax_for_h = 1
"let c_no_if0 = 1
"let c_no_cformat = 1
"let c_no_c99 = 1
"let c_no_c11 = 1

" Work around highlighting errors when scrolling backwards
"let c_minlines = 100
" }}}

" Haskell: {{{
let hs_highlight_delimiters = 1
let hs_highlight_boolean = 1
let hs_highlight_types = 1
let hs_highlight_more_types = 1
" }}}

" SQL:
let g:sql_type_default = 'postgresql'

" Shell:
Gautocmdft zsh,sh setlocal tabstop=4 softtabstop=4 shiftwidth=4
let g:sh_fold_enabled= 4   "  (enable if/do/for folding)

" Bash:
" Enable bash syntax on /bin/sh shevang
" http://tyru.hatenablog.com/entry/20101007/
let g:is_bash = 1

" This will add highlighting for the commands that BASH (version 2.05a and later, and part earlier) adds.
let readline_has_bash = 1

" Dockerfile:
Gautocmd BufRead,BufNewFile *.dockerfile,Dockerfile.* set filetype=dockerfile
"Gautocmdft Dockerfile setlocal noexpandtab tabstop=4 softtabstop=4 shiftwidth=4 nocindent
Gautocmdft Dockerfile setlocal tabstop=4 softtabstop=4 shiftwidth=4 nocindent

" Markdown:
"Gautocmd BufRead,BufNewFile *.md set filetype=markdown
"Gautocmd BufRead,BufNewFile *.md let g:deoplete#disable_auto_complete = 0

" Gitconfig:
Gautocmdft gitconfig setlocal softtabstop=4 shiftwidth=4 noexpandtab

" Vagrant:
Gautocmd BufRead,BufNewFile Vagrantfile set filetype=ruby

" Vim:
Gautocmdft vim setlocal foldmethod=marker

" develop nvimrc helper
Gautocmd BufRead,BufNewFile *.vim,*.nvim set filetype=vim
"Gautocmd BufWritePost $MYVIMRC,*.vim,*.nvim nested silent! source $MYVIMRC
""Gautocmd BufRead,BufNewFile $MYVIMRC, init.vim setlocal tags=$MYVIMRC . '/tags'
"Gautocmdft vim setlocal tags=$XDG_CONFIG_HOME/nvim/tags
"" Gautocmd BufWritePost $MYVIMRC cd ~/.nvim; call vimproc#system("ctags -R --fields=+l --sort=yes &")
"Gautocmd BufWritePost $MYVIMRC silent! call vimproc#system("ctags -R --fields=+l -f $XDG_CONFIG_HOME/nvim/tags $XDG_CONFIG_HOME/nvim &")

