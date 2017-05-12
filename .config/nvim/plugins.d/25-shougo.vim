if has('nvim')
  " Unite fod nvim (async)
  Plug 'Shougo/denite.nvim', {'do': ':UpdateRemotePlugins'}
endif

Plug 'Shougo/unite.vim'

Plug 'Shougo/unite-outline'
Plug 'Shougo/unite-build'
Plug 'Shougo/unite-help'
Plug 'Shougo/unite-session'

Plug 'Shougo/vimfiler.vim'
let g:vimfiler_as_default_explorer = 1

" Jira: HOT github and jira issue management
Plug 'rafi/vim-unite-issue'

Plug 'Shougo/vimproc', { 'do' : 'make' }
Plug 'Shougo/neopairs.vim'
Plug 'Shougo/echodoc.vim'
Plug 'Shougo/context_filetype.vim'
Plug 'Shougo/neossh.vim'
" unite/denite mru source
Plug 'Shougo/neomru.vim'
" history/yank source for unite/denite
Plug 'Shougo/neoyank.vim'

" neoinclude: "include" and "file/include" sources
Plug 'Shougo/neoinclude.vim'
"Plug 'akatrevorjay/neoinclude.vim'
