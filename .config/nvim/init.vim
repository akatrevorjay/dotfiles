version 6.0

if has('nvim')
	let $NVIM_TUI_ENABLE_TRUE_COLOR=1
else
	set t_Co=256
	if &compatible
		set nocompatible  " Be iMproved
	endif
endif
set background=dark

"let &t_SI .= "\<Esc>[2 q"  " solid block in insert mode
"let &t_EI .= "\<Esc>[2 q"  " solid block in normal mode
"highlight Cursor guifg=white guibg=black
"highlight iCursor guifg=white guibg=steelblue
"set guicursor=n-v-c:block-Cursor
"set guicursor+=i:ver100-iCursor
"set guicursor+=n-v-c:blinkon0
"set guicursor+=i:blinkwait10

"let g:plug_url_format = '%s'

" declare plugins
"silent!
call plug#begin('~/.cache/vim/plugged')
call source#any('plugins')
call plug#end()

" Required: (not on neovim however)
syntax on                   " syntax highlighing
filetype on                 " try to detect filetypes
filetype plugin indent on   " enable loading indent file for filetype

" Text editing
set backspace=indent,eol,start
set cino=:0 " No indent for case:/default:
set shiftwidth=4
set tabstop=4

" Interface
"set guifont=Monoissome:h12
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
"set termguicolors
colorscheme sunburst
"colorscheme PaperColor
"silent! colorscheme molokai
let g:airline_theme = 'PaperColor'
"let g:PaperColor_Dark_Override = { 'background' : '#1c1c1c', 'cursorline' : '#abcdef', 'matchparen' : '#3a3a3a', 'comment' : '#5f875f' }
let g:PaperColor_Dark_Override = { 'background' : '#000000', 'cursorline' : '#abcdef', 'matchparen' : '#3a3a3a', 'comment' : '#5f875f' }
"let g:PaperColor_Light_Override = { 'background' : '#abcdef', 'cursorline' : '#dfdfff', 'matchparen' : '#d6d6d6' , 'comment' : '#8e908c' }

" UI (gui)
if has('gui_macvim')
	set transparency=10
endif

nmap r q
unmap q
nmap q :q<cr>
nmap Q :q<cr>
nmap w :w<cr>
nmap <M-s> :w<cr>
nmap <M-q> :q!<cr>
nmap W :wq<cr>
nmap ; :

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
if exists('g:loaded_emoji')
	let g:gitgutter_sign_added = emoji#for('small_blue_diamond')
	let g:gitgutter_sign_modified = emoji#for('small_orange_diamond')
	let g:gitgutter_sign_removed = emoji#for('small_red_triangle')
	let g:gitgutter_sign_modified_removed = emoji#for('collision')
	"set completefunc=emoji#complete
	" replace :emojiname: with emoji: %s/:\([^:]\+\):/\=emoji#for(submatch(1), submatch(0))/g
endif

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

" copy paste to system buffer
set clipboard^=unnamedplus

