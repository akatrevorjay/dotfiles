"" neosnippet
" Plug 'Shougo/neosnippet.vim'
" Plug 'Shougo/neosnippet-snippets'

imap <expr> <CR> (pumvisible() ? "\<C-Y>\<Plug>(expand_or_cr)" : "\<CR>")
imap <expr> <Plug>(expand_or_cr) (cm#completed_is_snippet() ? "\<C-U>" : "\<CR>")

Plug 'SirVer/ultisnips'

Plug 'honza/vim-snippets'
"Plug 'akatrevorjay/vim-snippets'

" Plug 'StephenPCG/vim-snippets-salt', {'for': 'sls'}

"" Causes weird text to be added post-completion..
" let g:minisnip_trigger = '<leader>s'
" Plug 'joereynolds/vim-minisnip'
" if has('nvim')
"   Plug 'joereynolds/deoplete-minisnip'
" endif

" TODO: Is this snippets related?
"Plug 'aperezdc/vim-template'

