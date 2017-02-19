
" Fuzzy file finder
let g:fzf_action = {
      \ 'ctrl-s': 'split',
      \ 'ctrl-v': 'vsplit'
      \ }

nnoremap <silent><c-p> :GFiles<cr>
nnoremap <silent><c-e> :FZF<cr>

