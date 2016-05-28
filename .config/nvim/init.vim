version 6.0

if has('nvim')
	let $NVIM_TUI_ENABLE_TRUE_COLOR=1
endif
set t_Co=256
set background=dark

"dein Scripts-----------------------------
if !has('nvim') && &compatible
	set nocompatible							 " Be iMproved
endif

" If we don't have vim plug installed, install it
"if empty(glob('~/.vim/autoload/plug.vim'))
"	silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
"		\ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
"	autocmd VimEnter * PlugInstall | source $MYVIMRC
"endif

" Required:
set runtimepath^=$HOME/.cache/nvim/dein/github.com/Shougo/dein.vim

" Required:
call dein#begin(expand('~/.cache/nvim/dein'))

" Let dein manage dein
" Required:
call dein#add('Shougo/dein.vim')

call dein#add('tpope/vim-fugitive')
call dein#add('junegunn/gv.vim', {'on': 'GV'})

call dein#add('junegunn/vim-pseudocl')
call dein#add('junegunn/vim-oblique')

call dein#add('junegunn/vim-peekaboo')

call dein#add('junegunn/goyo.vim', {'on': 'Goyo'})
call dein#add('junegunn/limelight.vim')

call dein#add('junegunn/vim-github-dashboard')

call dein#add('junegunn/vim-emoji')

"call dein#add('junegunn/vim-easy-align')

"call dein#add('Shougo/neosnippet.vim')
"call dein#add('Shougo/neosnippet-snippets')
"
"call dein#add('SirVer/ultisnips')
"call dein#add('honza/vim-snippets')

call dein#add('wellle/tmux-complete.vim')

call dein#add('Shougo/deoplete.nvim')

call dein#add('Shougo/unite.vim')

"" local
call dein#add($GOPATH.'/src/github.com/junegunn/fzf')

" Colors
call dein#add('tomasr/molokai', {'merged': 0})

" Required:
call dein#end()

" Required:
filetype plugin indent on
syntax on

" If you want to install not installed plugins on startup.
if dein#check_install()
	call dein#install()
endif

"End dein Scripts-------------------------

" Text editing
set backspace=indent,eol,start
set cino=:0 " No indent for case:/default:
set shiftwidth=4
set tabstop=4

" Interface
set guifont=Monoissome:h12
set hidden
set hlsearch
set nowrap
set ruler
set wildmenu
set wildmode=longest:full,full

set colorcolumn=120
set relativenumber
set autoindent
set smarttab

" Color scheme
colorscheme sunburst

"" UI (tui)
set termcap
set termguicolors

"" UI (gui)
if has('gui_macvim')
	set transparency=10
endif

nmap Q :q<cr>
nmap w :w<cr>
nmap <M-s> :w<cr>
nmap <M-q> :q!<cr>
nmap W :wq<cr>

vmap [% [%m'gv``
vmap ]% ]%m'gv``
vmap a% [%v]%
let s:cpo_save=&cpo
set cpo&vim
vmap gx <Plug>NetrwBrowseXVis
nmap gx <Plug>NetrwBrowseX
vnoremap <silent> <Plug>NetrwBrowseXVis :call netrw#BrowseXVis()
nnoremap <silent> <Plug>NetrwBrowseX :call netrw#BrowseX(expand((exists("g:netrw_gx")? g:netrw_gx : '<cfile>')),netrw#CheckIfRemote())
let &cpo=s:cpo_save
unlet s:cpo_save
set helplang=en
set modeline
set showcmd
set showfulltag
set showmatch
set hlsearch incsearch
"set verbose=2
set window=55

" Commands that shell out tend to assume a bourne shell
set shell=sh


"" Limelight
nmap <Leader>l <Plug>(Limelight)
xmap <Leader>l <Plug>(Limelight)

"" emoji
let g:gitgutter_sign_added = emoji#for('small_blue_diamond')
let g:gitgutter_sign_modified = emoji#for('small_orange_diamond')
let g:gitgutter_sign_removed = emoji#for('small_red_triangle')
let g:gitgutter_sign_modified_removed = emoji#for('collision')
"set completefunc=emoji#complete
" replace :emojiname: with emoji: %s/:\([^:]\+\):/\=emoji#for(submatch(1), submatch(0))/g

"" peekaboo
" Default peekaboo window
let g:peekaboo_window = 'vertical botright 30new'

" Delay opening of peekaboo window (in ms. default: 0)
let g:peekaboo_delay = 750

" Compact display; do not display the names of the register groups
let g:peekaboo_compact = 1

"" vim-github-dashboard
let g:github_dashboard = { 'username': 'akatrevorjay', 'password': $GITHUB_TOKEN }

"" tmux-complete
" w/deoplete
let g:tmuxcomplete#trigger = ''

" vim: set ft=vim :
