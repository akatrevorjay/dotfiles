
" Great bindings for switching buffers and more
Plug 'tpope/vim-unimpaired'

" Delete buffer without ever closing a window
Plug 'qpkorr/vim-bufkill'

" Quoting/parenthesizing made simple
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-surround'

"" Quick date changes
Plug 'tpope/vim-speeddating'

"Plug 'wakatime/vim-wakatime'
"let g:wakatime_PythonBinary = '/usr/bin/python'

" Vim Space Controller
if ! exists('g:vimpager.enabled')
    Plug 'vim-ctrlspace/vim-ctrlspace'
endif

" Nice start screen
Plug 'mhinz/vim-startify'

" Tabular helps line up text easily
Plug 'godlygeek/tabular', {'on': 'Tabularize'}

let g:mta_filetypes = {'html': 1, 'xhtml': 1, 'xml': 1, 'jinja2': 1, 'gohtmltmpl': 1}
Plug 'valloric/matchtagalways', {'for': keys(g:mta_filetypes)}

""
"" Notmuch: mail
""
"Plug 'felipec/notmuch-vim'
"" Notmuch mail address book (abook)
"if has('python')
"  Plug 'guyzmo/notmuch-abook'
"endif

""
"" Tasks
""

Plug 'vimwiki/vimwiki'

" Taskwarrior: Fucking sick ftw
if executable('task')
    Plug 'farseer90718/vim-taskwarrior'

    " Taskwarrior: Better interface
    Plug 'tbabej/taskwiki'
endif

" Outlines (uses utl)
"Plug 'vim-voom/VOoM'

""
"" Notes
""
"Plug 'xolox/vim-notes'
"Plug 'jceb/vim-orgmode'

""
"" Presenting
""

"" may require tpope/vim-markdown
"Plug 'tybenz/vimdeck'

"Plug 'alfredodeza/posero.vim'
"let g:posero_default_mappings = 1
"let b:posero_fake_type = "^\$"
"let b:posero_push_on_non_fake = 1
"let b:posero_push_all = 1
"let b:posero_fake_type = '\v(.*)'

"Plug 'sotte/presenting.vim'

"Plug 'cohama/lexima.vim'

"Plug 'hakimel/reveal.js'

" chdir to project/vcs root on open
Plug 'airblade/vim-rooter'
