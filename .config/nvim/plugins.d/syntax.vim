
" Better git commit handling
Plug 'rhysd/committia.vim'

" Allows for python rst docstring support
"Plug 'Rykka/riv.vim'

"" BATS test runner and syntax
Plug 'markcornick/vim-bats', {'for': ['sh', 'zsh', 'bats']}

" Webdev syntax/helpers
Plug 'mattn/emmet-vim', {'for': ['html', 'xhtml', 'css', 'xml', 'xls', 'markdown', 'mkd']}
"autocmd BufNewFile,BufRead *.md setf markdown

" Better json
Plug 'elzr/vim-json'

" AWS CloudFormation
Plug 'm-kat/aws-vim'

" Go
Plug 'fatih/vim-go'  ", {'for': ['go', 'gotexttmpl', 'gohtmltmpl']}

" Clang
" Supports deoplete source
Plug 'Rip-Rip/clang_complete'
"Plug 'osyo-manga/vim-marching'

"" Ruby
"Plug 'osyo-manga/vim-monster'

" Javascript
"Plug 'moll/vim-node'  ", {'for': 'javascript'}
"Plug 'ternjs/tern_for_vim'  ", {'for': 'javascript'})

"" ZSH "official" vim syntax, definitely more up to date.
Plug 'chrisbra/vim-zsh'

"" YAML: is it better syntax? What is this?
Plug 'ingydotnet/yaml-vim'  ", {'for': 'yaml'}

" Salt
Plug 'saltstack/salt-vim'  ", { 'for': 'sls' }

" Jinja2
Plug 'Glench/Vim-Jinja2-Syntax'

" TOML
Plug 'cespare/vim-toml'

" Tmux.conf syntax
Plug 'tmux-plugins/vim-tmux'

" CSV
Plug 'chrisbra/csv.vim'

""
"" Markdown
""

" Markdown
"Plug 'plasticboy/vim-markdown', {'for': 'markdown'}

" Markdown with live preview
"Plug 'junegunn/vim-xmark', {'do': 'make', 'for': 'markdown'}

Plug 'tpope/vim-markdown'

""
"" Vetting:
""

" Format any txt file
"Plug 'vim-scripts/Txtfmt-The-Vim-Highlighter'

if v:version >= 704
	Plug 'vim-pandoc/vim-pandoc-syntax'
endif

""
"" Checkers:
""

" GitGutter: Show git status in the gutter
Plug 'airblade/vim-gitgutter'

" Fix trailing whitespace:
Plug 'vim-scripts/trailing-whitespace'

" Autoformat: supports numerous filetypes
Plug 'Chiel92/vim-autoformat'

" Google code formatting
Plug 'google/vim-codefmt'

" Generic test runner
"Plug 'janko-m/vim-test'

"" Syntastic: automagic syntax checks
Plug 'scrooloose/syntastic'
Plug 'myint/syntastic-extras'
" viml linting
Plug 'todesking/vint-syntastic'

""
"" Language: Python
""

" Better indenting
"Plug 'hynek/vim-python-pep8-indent'
"Plug 'michaeljsmith/vim-indent-object'

" Better folding for python
"Plug 'tmhedberg/SimpylFold'

"" Better formatter (yapf > autopep8)
"Plug 'pignacio/vim-yapf-format'
""
"" The style used to format the buffer is checking the following in order:
"" - b:yapf_format_style variable.
"" - Local .yapf.style for the file's project (or current directory for unsaved files).
"" - g:yapf_format_style variable.
"" - pep8
""
""let g:yapf_format_yapf_location = '/path/to/f'
"let g:yapf_format_style = 'google'
"" Mappings
"map <C-o> :YapfFullFormat<CR>
"imap <C-o> <ESC>:YapfFormat<CR>i
"vmap <C-o> :YapfFormat<CR>

" Run pytest, integrate a bit
"Plug 'alfredodeza/pytest.vim'  ", {'on': 'Pytest'}

