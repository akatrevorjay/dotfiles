" Great bindings for switching buffers and more
Plug 'tpope/vim-unimpaired'

"" Delete buffer without ever closing a window
Plug 'qpkorr/vim-bufkill'

"" Quoting/parenthesizing made simple
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-surround'

"" Quick date changes
Plug 'tpope/vim-speeddating'

"Plug 'wakatime/vim-wakatime'
"let g:wakatime_PythonBinary = '/usr/bin/python'

"" CtrlP and plugins
"Plug 'ctrlpvim/ctrlp.vim'
"Plug 'fisadev/vim-ctrlp-cmdpalette'

" Vim Space Controller
Plug 'vim-ctrlspace/vim-ctrlspace'

" TODO: What is this?
Plug 'tomtom/tlib_vim'
" frecency baby
Plug 'amiorin/vim-fasd'

""
"" Notmuch: mail
""
Plug 'felipec/notmuch-vim'
" Notmuch mail address book (abook)
if has('python')
  Plug 'guyzmo/notmuch-abook'
endif

""
"" Tasks
""

" Taskwarrior: Fucking sick ftw
Plug 'farseer90718/vim-taskwarrior'  ", {'on': ['TW', 'TWAdd']}

" Taskwarrior: Better interface
Plug 'vimwiki/vimwiki', {'branch': 'dev'}
Plug 'tbabej/taskwiki'

""
"" Notes
""
"Plug 'xolox/vim-notes'
"Plug 'jceb/vim-orgmode'

