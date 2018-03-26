
if ! has('nvim')
  finish
endif

let g:neoterm_default_mods = ':horizontal'
let g:neoterm_automap_keys = ',tt'
let g:neoterm_shell = $SHELL
let g:neoterm_autoinsert = 1

nnoremap <silent> <f10> :TREPLSendFile<cr>
nnoremap <silent> <f9> :TREPLSend<cr>
vnoremap <silent> <f9> :TREPLSend<cr>

" run set test lib
nnoremap <silent> <leader>rt :call neoterm#test#run('all')<cr>
nnoremap <silent> <leader>rf :call neoterm#test#run('file')<cr>
nnoremap <silent> <leader>rn :call neoterm#test#run('current')<cr>
nnoremap <silent> <leader>rr :call neoterm#test#rerun()<cr>

" Useful maps
nnoremap <silent> <leader>tT :call neoterm#toggleAll()<cr>
nnoremap <silent> <leader>tt :call neoterm#toggle({})<cr>
nnoremap <silent> <leader>to :call neoterm#open({})<cr>
nnoremap <silent> <leader>tq :call neoterm#close({})<cr>
nnoremap <silent> <leader>tc :call neoterm#clear({})<cr>
" kills the current job (send a <c-c>)
nnoremap <silent> <leader>tk :call neoterm#kill({})<cr>

" Git commands
command! -nargs=+ Tg :T git <args>

