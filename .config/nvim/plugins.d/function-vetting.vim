"Plug 'henrik/vim-indexed-search'

"Plug 'tpope/vim-eunuch'

" Superb motion controls
"Plug 'easymotion/vim-easymotion'

"Plug 'junegunn/vim-pseudocl'
"Plug 'junegunn/vim-oblique'

" Find-N-Replace
"Plug 'junegunn/vim-fnr'

"Plug 'junegunn/vim-peekaboo'

"Plug 'junegunn/vim-easy-align'
"Plug 'thelocehiliosan/vim-byrne'

" Make f usable and more powerful
", {'on': '<Plug>'}
Plug 'rhysd/clever-f.vim'

"" RainbowParantheses
"Plug 'junegunn/rainbow_parentheses.vim'
"Gautocmdft lisp,clojure,scheme RainbowParentheses

"Plug 'vim-scripts/restore_view.vim'

"" Dynamic SQL completion via opening a db connection
"Plug 'vim-scripts/dbext.vim'

" Marks
"Plug 'kshenoy/vim-signature'

"" Lots of script helpers at s:_.blah
"Plug 'vim-jp/vital.vim'
"Plug 'haya14busa/underscore.vim'

"" Abolish: Helpers for searching, substituting, and abbreviating multiple variants at once through {} expansion
"Plug 'tpope/vim-abolish'

Plug 'eugen0329/vim-esearch'

"let g:esearch = {
"  \ 'adapter':    'ag',
"  \ 'backend':    has('nvim') && 'nvim' || 'vimproc',
"  \ 'out':        'win',
"  \ 'batch_size': 1000,
"  \ 'use':        ['visual', 'hlsearch', 'last'],
"  \}

"" Start esearch prompt autofilled with one of g:esearch.use initial patterns
"call esearch#map('<leader>ff', 'esearch')
"" Start esearch autofilled with a word under the cursor
"call esearch#map('<leader>fw', 'esearch-word-under-cursor')

"call esearch#out#win#map('t',       'tab')
"call esearch#out#win#map('i',       'split')
"call esearch#out#win#map('s',       'vsplit')
"call esearch#out#win#map('<Enter>', 'open')
"call esearch#out#win#map('o',       'open')

""    Open silently (keep focus on the results window)
"call esearch#out#win#map('T', 'tab-silent')
"call esearch#out#win#map('I', 'split-silent')
"call esearch#out#win#map('S', 'vsplit-silent')

""    Move cursor with snapping
"call esearch#out#win#map('<C-n>', 'next')
"call esearch#out#win#map('<C-j>', 'next-file')
"call esearch#out#win#map('<C-p>', 'prev')
"call esearch#out#win#map('<C-k>', 'prev-file')

"call esearch#cmdline#map('<C-o><C-r>', 'toggle-regex')
"call esearch#cmdline#map('<C-o><C-s>', 'toggle-case')
"call esearch#cmdline#map('<C-o><C-w>', 'toggle-word')
"call esearch#cmdline#map('<C-o><C-h>', 'cmdline-help')

"hi ESearchMatch ctermfg=black ctermbg=white guifg=#000000 guibg=#E6E6FA

