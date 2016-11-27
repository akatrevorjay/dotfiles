
Plug 'mattn/webapi-vim'
Plug 'tyru/open-browser.vim'

" Maktaba is a framework for vim plugins, really nice actually.
Plug 'google/vim-maktaba'
" Also add Glaive, which is used to configure codefmt's maktaba flags. See
" `:help :Glaive` for usage.
Plug 'google/vim-glaive'

" Reqd by Taskwarrior
Plug 'xolox/vim-misc'

" vim-taskwiki
Plug 'powerman/vim-plugin-AnsiEsc'

" Ultimate Text Linker
Plug 'vim-scripts/utl.vim'

" Tagbar: ctags, syntax, etc
Plug 'majutsushi/tagbar'

"Plug 'vim-scripts/taglist.vim'

" Continuously updated session files
"Plug 'tpope/vim-obsession'

" used for repeating operator actions via "."
Plug 'tpope/vim-repeat'

" Faster folding
Plug 'Konfekt/FastFold'

Plug 'junegunn/vim-emoji'

if has('nvim')
  " NeoTerm: nice wrapper around :term
  Plug 'kassio/neoterm'
else
  Plug 'wincent/terminus'
endif

" dark powered shell for Neovim
Plug 'Shougo/deol.nvim'
