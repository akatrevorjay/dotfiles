
let g:go_highlight_build_constraints = 1
let g:go_highlight_error = 1
let g:go_highlight_interfaces = 1
let g:go_highlight_structs = 1
let g:go_highlight_functions = 1
let g:go_highlight_operators = 1
let g:go_highlight_methods = 1

let g:go_term_mode = "split"
let g:go_term_enabled = 1

let g:go_list_type = "quickfix"

" Use goimports to automagically insert import paths instead of gofmt
let g:go_fmt_command = "goimports"

let g:syntastic_go_checkers = ['golint', 'govet', 'errcheck']
let g:syntastic_mode_map = { 'mode': 'active', 'passive_filetypes': ['go'] }

" let g:go#use_vimproc = 1

"let g:go_fmt_autosave = 1

" if has('nvim')
"   au FileType go nmap <leader>rt <Plug>(go-run-tab)
"   au FileType go nmap <Leader>rs <Plug>(go-run-split)
"   au FileType go nmap <Leader>rv <Plug>(go-run-vertical)
" endif
"
" au FileType go nmap <leader>R <Plug>(go-run)
" au FileType go nmap <leader>b <Plug>(go-build)
" au FileType go nmap <leader>t <Plug>(go-test)
" au FileType go nmap <leader>c <Plug>(go-coverage)
"
" au FileType go nmap <Leader>ds <Plug>(go-def-split)
" au FileType go nmap <Leader>dv <Plug>(go-def-vertical)
" au FileType go nmap <Leader>dt <Plug>(go-def-tab)
"
" au FileType go nmap <Leader>gd <Plug>(go-doc)
" au FileType go nmap <Leader>gv <Plug>(go-doc-vertical)
"
" au FileType go nmap <Leader>s <Plug>(go-implements)
"
" au FileType go nmap <Leader>i <Plug>(go-info)
"
" au FileType go nmap <Leader>r <Plug>(go-rename)


