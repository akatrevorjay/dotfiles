
" Commenting:
Plug 'tpope/vim-commentary'
Plug 'scrooloose/nerdcommenter'

" Gundo: Undo browser
Plug 'sjl/gundo.vim'

" Fuzzy File Finder:
Plug 'junegunn/fzf.vim'
Plug $GOPATH.'/src/github.com/junegunn/fzf'

" File Tree:
" turned off autoloading as other plugins interface with it
", { 'on':  'NERDTreeToggle' }
"Plug 'scrooloose/nerdtree'
"Plug 'Xuyuanp/nerdtree-git-plugin'

" Tagbar: ctags, syntax, etc
"Plug 'majutsushi/tagbar'

Plug 'vim-scripts/taglist.vim'

if has('nvim')
  " NeoTerm: nice wrapper around :term
  Plug 'kassio/neoterm'
else
  Plug 'wincent/terminus'
endif

" dark powered shell for Neovim
Plug 'Shougo/deol.nvim'

" Continuously updated session files
Plug 'tpope/vim-obsession'

" used for repeating operator actions via "."
Plug 'tpope/vim-repeat'

" Faster folding
Plug 'Konfekt/FastFold'

Plug 'junegunn/vim-emoji'

