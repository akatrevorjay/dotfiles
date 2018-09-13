"" Syntastic: automagic syntax checks
"Plug 'scrooloose/syntastic'
"Plug 'myint/syntastic-extras'
"" viml linting
"Plug 'todesking/vint-syntastic'

" ALE: Async Lint Engine
Plug 'w0rp/ale', {'do': ':UpdateRemotePlugins'}
"let g:ale_emit_conflict_warnings = 0

" Other async lint engine
"Plug 'osyo-manga/vim-watchdogs'

" GitGutter: Show git status in the gutter
"Plug 'airblade/vim-gitgutter'

" Quickfix-signs
Plug 'tomtom/quickfixsigns_vim'

" Fix trailing whitespace:
Plug 'vim-scripts/trailing-whitespace'

" Autoformat: supports numerous filetypes
Plug 'Chiel92/vim-autoformat'

" Google code formatting
Plug 'google/vim-codefmt'

""
"" Coverage
""

" Google code coverage viewing
Plug 'google/vim-coverage'

" Plug 'mgedmin/coverage-highlight.vim'
" inoremap [C :<C-U>PrevUncovered<CR>
" noremap ]C :<C-U>NextUncovered<CR>

Plug 'alfredodeza/coveragepy.vim'
" let g:coveragepy_uncovered_sign = '-'

Plug 'coala/coala-vim.git'
