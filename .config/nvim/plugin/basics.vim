" Basic: setup (misc/search/highlight/nu/gui/invisibles) {{{
set showcmd             " Show (partial) command in status line.
set showmatch           " Show matching brackets.
set ignorecase          " Do case insensitive matching
"set smartcase          " Do smart case matching (If uppercase letter, then sensitive)
set incsearch           " Incremental search
set hidden              " Hide buffers when they are abandoned

set mouse=a             " Enable mouse usage (all modes) in terminals
"set mouse=nvch         " all modes but insert
"set mousemodel="extend" " popup popup_setpos

" Update buffer when a file is changed from the outside
"set autoread

" Write buffer when leaving
" Automatically save before commands like :next and :make
"set autowrite

" Let OS know when to flush disk
set nofsync

" no backup/swap
"set nowritebackup
"set nobackup
"set noswapfile

" Allow backspacing over everything in insert mode
set backspace=indent,eol,start

" Ignore case in file searches
set ignorecase
" .. Except when we use any upper case in the pattern
set smartcase

" Highlight all results of search
set hlsearch
" Ctrl-L clears the highlight from the last search
"noremap <C-l> :nohlsearch<CR><C-l>
"noremap! <C-l> <ESC>:nohlsearch<CR><C-l>

" Stupid hack for qtile not telling gvim to redraw
"nmap r :redraw!<cr>

" Highlight the line the cursor is on (local to window)
set cursorline
"set cursorcolumn

" Other highlight options
"set highlight=8r,db,es,hs,mb,Mr,nu,rs,sr,tb,vr,ws

" set 7 lines to curors - when moving vertical
"set so=7

" show a report when N lines were changed. 0 means
" 'all' - always report
"set report=0

" make taglist hilight update faster
"set updatetime=250

" tab/buffer options
" useopen usetab split newtab
"set switchbuf=usetab,useopen,newtab

" Numbers
set number
" Min width of the number column to the left
set numberwidth=1
" Relative line numbers
set relativenumber

" Invisibles
set list

" When using set list:

if $LANG =~ ".*\.UTF-8$" || $LANG =~ ".*utf8$" || $LANG =~ ".*utf-8$"
  "set listchars=precedes:…,extends:…
  set listchars=extends:❯,precedes:❮
  set listchars+=nbsp:␣
  set listchars+=tab:»\ ,trail:·
  set showbreak=↪
else
  set lcs=tab:>-,eol:$,nbsp:%,trail:X,extends:>,precedes:<
  "set listchars=tab:>.,trail:.,extends:#,nbsp:.
  "set listchars=tab:>-,trail:-
  "set listchars=tab:..
endif

" Color column
set cc=120
"hi ColorColumn ctermbg=lightblue guibg=lightblue

" Highlight columns over 120
"au BufWinEnter * let w:m2=matchadd('ErrorMsg', '\%>120v.\+', -1)

"set pumheight=0 " 0 is Enable maximum displayed completion words in omnifunc list
"set cmdheight=2

" Always splits to the right and below
set splitright
set splitbelow

" Boost performance of rendering long lines
set synmaxcol=200

" Sets how many lines of history vim has to remember
"set history=10000

" Minimal number of screen lines to keep above and below the cursor
set scrolloff=10

" How many lines to scroll at a time, make scrolling appears faster
set scrolljump=10

" No need to show mode
set noshowmode

" Set sensible heights for splits
set winheight=30
" Setting this causes problems with Unite-outline. Don't really need it
" set winminheight=5

" Show info in window title
set title

" Set the text of the icon for this window
set icon

"" Make regex a little easier to type
"set magic

" Lower the delay of escaping out of other modes
" set timeout timeoutlen=1000 ttimeoutlen=1
"set timeout timeoutlen=200 ttimeoutlen=1

" wrap long lines at a character in 'breakat'
set linebreak

" preserve indent to wrapped text
set breakindent

" When completing tags in Insert mode show more info
set showfulltag

" Highlight spelling mistakes
"set spell
set spelllang=en_us

" file that "zg" adds good words to
"set spellfile=

" Start a dialog when a command fails
set confirm

" Error bells
set errorbells

set matchpairs=(:),{:},[:],<:>,*:*,\":\",\':\',\|:\|,\^:\$
"set nrformats=bin,octal,hex

"set selection=inclusive
"set selectmode=mouse

set textwidth=120
"set wrapmargin=2

"set formatoptions=jcroql
"set formatoptions=tcroqwan2jl

" Writes to the unnamed register also writes to the * and + registers. This
" makes it easy to interact with the system clipboard
if has('unnamedplus')
  set clipboard=unnamedplus
else
  set clipboard=unnamed
endif

" Spelling highlights. Use underline in term to prevent cursorline highlights
" from interfering
if has("spell")
  hi clear SpellBad
  hi SpellBad cterm=underline ctermfg=red
  hi clear SpellCap
  hi SpellCap cterm=underline ctermfg=blue
  hi clear SpellLocal
  hi SpellLocal cterm=underline ctermfg=blue
  hi clear SpellRare
  hi SpellRare cterm=underline ctermfg=blue
endif

" Use a low updatetime. This is used by CursorHold
"set updatetime=2000

"" Cursor settings. This makes terminal vim sooo much nicer!
"" Tmux will only forward escape sequences to the terminal if surrounded by a DCS
"" sequence
"if exists('$TMUX')
"  let &t_SI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=1\x7\<Esc>\\"
"  let &t_EI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=0\x7\<Esc>\\"
"else
"  let &t_SI = "\<Esc>]50;CursorShape=1\x7"
"  let &t_EI = "\<Esc>]50;CursorShape=0\x7"
"endif

" }}}

" Spacing: tabstops/indents {{{
" Number of spaces used for autoindent (local to buffer)

set autoindent " always set autoindenting on"
set smartindent " use smart indent if there is no indent file"
set tabstop=4 " <tab> inserts 4 spaces"
set softtabstop=4 " <BS> over an autoindent deletes 4 spaces."
set smarttab " Handle tabs more intelligently"
set expandtab " Use spaces, not tabs, for autoindent/tab key."
set shiftwidth=4 " an indent level is 4 spaces wide."
set shiftround " rounds indent to a multiple of shiftwidth"
set showtabline=4

"" Only set indent when no other was loaded.
"if !exists("b:did_indent")
"  " Clever autoindenting (Means?)
"  set smartindent
"endif

" copy whitespace for indenting from previous line
set copyindent

" Last line should be EoL
set endofline

"" Fixes missing EoL at end of file (default)
set fixeol

set fileignorecase
set wildignorecase

" indenting for C code
"set cindent

" Store undo
set undofile
" Undodir is set to XDG by default in NeoVim, so all good on that front.
"set undodir='~/.vim/undo'

" Enable reading .vimrc/.exrc/.gvimrc in the current dir
"set exrc

" Don't fuck with existing spacing unless we have to.
set preserveindent
" }}}

" Folding: {{{
set foldenable
"set foldmethod=marker  " syntax indent
"set foldmarker={{{,}}}
"set foldcolumn=2
"set foldnestmax=2
set foldlevel=5
set foldminlines=5

" Initial: Number of levels to open initially
set foldlevelstart=10
" all
"set foldlevelstart=99

"" Use space to toggle folding
" nnoremap <space> za
" vnoremap <space> zf
"" OR
nnoremap <silent> <Space> @=(foldlevel('.')?'za':"\<Space>")<CR>
vnoremap <Space> zf

" Jump: to the last position when reopening a file {{{
" https://github.com/neovim/neovim/blob/master/runtime/vimrc_example.vim
" When editing a file, always jump to the last known cursor position.
" Don't do it when the position is invalid or when inside an event handler
" (happens when dropping a file on gvim).
" Also don't do it when the mark is in the first line, that is the default
" position when opening a file.
Gautocmd BufReadPost *
      \ if line("'\"") > 1 && line("'\"") <= line("$") && &filetype != 'gitcommit' |
      \   exe "normal! g`\"" |
      \ endif

" Protect header library
Gautocmd BufNewFile,BufRead /System/Library/Frameworks/* setlocal readonly nomodified
Gautocmd BufNewFile,BufRead /Applications/Xcode.app/Contents/* setlocal readonly nomodified
Gautocmd BufNewFile,BufRead /Applications/Xcode-beta.app/Contents/* setlocal readonly nomodified

"nmap <space> <leader>
"imap <silent><space> <leader>

" Allow terminal buffer size to be very large
let g:terminal_scrollback_buffer_size = 100000

set diffopt=filler,icase,iwhite,context:3,vertical

" Always use a new split when opening a file from quickfix
set switchbuf=split

" Number of insert completion lines to show
set pumheight=15

set shortmess+=Ics
"set cmdheight=2
"set noshowmode
