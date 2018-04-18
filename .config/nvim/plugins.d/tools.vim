" Plug 'tpope/vim-commentary'
" Plug 'scrooloose/nerdcommenter'
Plug 'tomtom/tcomment_vim'

" Gundo: Undo browser
Plug 'sjl/gundo.vim'

" Fuzzy File Finder:

"Plug $GOPATH.'/src/github.com/junegunn/fzf'
Plug 'junegunn/fzf' | Plug 'junegunn/fzf.vim' | Plug 'lvht/fzf-mru'

" set max lenght for the mru file list
let g:fzf_mru_file_list_size = 10 " default value
" set path pattens that should be ignored
let g:fzf_mru_ignore_patterns = '\.pyc\|fugitive\|\.git/\|\_^/tmp/' " default value

" Visual subst
Plug 'osyo-manga/vim-over'

Plug 'chrisbra/Recover.vim'

" vimdiff kind of leaves a bit to be desired when it comes to what it can interrogate from git.
Plug 'christoomey/vim-conflicted'

" Show git diff for interactive rebase
Plug 'hotwatermorning/auto-git-diff'

