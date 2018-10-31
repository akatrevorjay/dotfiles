"" Yank/Paste: {{{
" Pastes then visually selects and reindents
nnoremap <leader>p p`[v`]=

" z = "X11-Clipboard"
" x = "X11 Primary Selection"
" m (v on workman) = "X11 Secondary Selection"

command -range Cz :silent :<line1>,<line2>w !xsel -i -b
command -range Cx :silent :<line1>,<line2>w !xsel -i -p
command -range Cm :silent :<line1>,<line2>w !xsel -i -s
cabbrev cz Cz
cabbrev cx Cx
cabbrev cm Cm

command -range Pz :silent :r !xsel -o -b
command -range Px :silent :r !xsel -o -p
command -range Pm :silent :r !xsel -o -s

cabbrev pz Pz
cabbrev px Px
cabbrev pm Pm
" }}}

"noremap <F3> :Autoformat<CR>
""au BufWrite * :Autoformat

vmap [% [%m'gv``
vmap ]% ]%m'gv``
vmap a% [%v]%

" Quickly edit/reload the vimrc file
augroup reload_vimrc
  " Clear existing group
  au!
  au bufwritepost $MYVIMRC nested source $MYVIMRC

  if exists("g:loaded_webdevicons")
    au bufwritepost $MYVIMRC call webdevicons#refresh()
  endif

  if exists("g:loaded_airline")
    au bufwritepost $MYVIMRC AirlineRefresh
  endif
augroup END
nmap <silent> <leader>rv :so $MYVIMRC<CR>:call webdevicons#refresh()<CR>:AirlineRefresh<CR>
nmap <silent> <leader>ev :e $MYVIMRC<CR>

" Allow move around using ctrl+arrows
noremap <silent> <C-Down> <C-W>j
noremap <silent> <C-Up> <C-W>k
noremap <silent> <C-Left> <C-W>h
noremap <silent> <C-Right> <C-W>l

" Move around windows easier
noremap <c-h> <c-w>h
noremap <c-j> <c-w>j
noremap <c-k> <c-w>k
noremap <c-l> <c-w>l

" Close with Alt+w
noremap <silent> <M-w> :bd<CR>
noremap <silent> <M-W> :bd!<CR>

" Make cmdline editing better
" cmap <tab> <c-n>

" Fix arrows in screen
"map ^[OC <Right>
"map ^[OD <Left>
"map ^[[C <S-Right>
"map ^[[D <S-Left>

" Move between buffers with super+left/right (broken)
"map <D-Left> [b
"map <D-Right> ]b

" Move between buffers with alt+left/right
map <M-Left> [b
map <M-Right> ]b
map <M-h> [b
map <M-l> ]b

" In iterm2 on osx, I usually map left opt to control, since opt is broken on
" osx anyway...
"map <C-Left> [b
"map <C-Right> ]b

" Stupid OSX (and libtermkey really)
" https://github.com/neovim/neovim/issues/2048
"if has('nvim')
"  nmap <BS> <C-h>
"endif

"" Use Q for formatting the current paragraph (or selection) (seems broken)
"vmap <Leader>q gq
"nmap <Leader>q gqap

"" YouCompleteMe
if exists('g:loaded_youcompleteme')
  nnoremap <leader>j :YcmCompleter GoToDefinition<CR>
  nnoremap <leader>d :YcmCompleter GoToDeclaration<CR>
  nnoremap <leader>g :YcmCompleter GoTo<CR>
  nmap <leader>gr :YCMCompleter GotoReferences<CR>
  nmap <leader>gi :YCMCompleter GotoImplementation<CR>
  map <leader>D :YcmCompleter GetDoc<CR>

endif

" CommandT
"nmap <leader>` :CommandT<CR>
"nmap <leader><leader>` :CommandTBuffer<CR>

" Gundo
map <Leader>u :GundoToggle<cr>

"" TaskList defaults to \t
"map <leader>v <Plug>TaskList
"map <leader>td <Plug>TaskList

"" Py.test
"" Execute the tests
"nmap <silent><Leader>tf <Esc>:Pytest file<CR>
"nmap <silent><Leader>tc <Esc>:Pytest class<CR>
"nmap <silent><Leader>tm <Esc>:Pytest method<CR>
"" cycle through test errors
"nmap <silent><Leader>tn <Esc>:Pytest next<CR>
"nmap <silent><Leader>tp <Esc>:Pytest previous<CR>
"nmap <silent><Leader>te <Esc>:Pytest error<CR>

" Don't use Ex mode, use Q for formatting
"noremap Q gq

"" Search current word, but not move next search word
"nnoremap * *:call feedkeys("\<S-n>")<CR>

" Cancel highlight search word
"nnoremap <silent> <C-l> :<C-u>nohlsearch<CR>

" When type 'x' key(delete), do not add yank register
nnoremap x "_x

" Jump marked line
nnoremap zj    zjzt
nnoremap zk    2zkzjzt

" http://ku.ido.nu/post/90355094974/how-to-grep-a-word-under-the-cursor-on-vim
nnoremap <M-h> :<C-u>SmartHelp<Space><C-r><C-w><CR>
nnoremap <A-h> :<C-u>SmartHelp<Space><C-r><C-w><CR>

"" fast scroll
"nnoremap <C-e> 2<C-e>
"nnoremap <C-y> 2<C-y>

" Move cursor to lines {upward|downward}, on the first non-blank character
"nnoremap <C-j> <C-m>
"nnoremap <C-k> -

" Switch suspend! map
map <leader>` :suspend<cr>
map ZZ :suspend<cr>
"nnoremap ZZ    ZQ

" Quit
map <silent> <leader>q :q<cr>
map <silent> <leader>Q :q!<cr>
map <silent> Q :q<cr>

map <silent> <m-Q><m-!> :q!<cr>
"map <c-w> :bd<cr>
map <silent> <m-w> :bd<cr>
map <silent> <m-w><m-!> :bd!<cr>

"" Quickly exit insert mode
""imap jj <Esc>
"" Can be typed even faster than jj.
"imap jk <Esc>
"" Press i to enter insert mode, and ii to exit.
"imap ii <Esc>
""" Pressing Ctrl-L leaves insert mode in evim, so why not in regular vim, too.
imap <C-L> <Esc>
imap <silent> jk <Esc>

imap <m-[> <Esc>{i
imap <m-]> <Esc>}i

"" In Mac OS X, mapping <S-space> does not work, but the following
"" is better (press the "apple" key and the space key).
"" Note that this will conflict with the spotlight shortcut
"imap <D-space> <Esc>
"" On gvim and Linux console Vim, you can use Alt-Space.
"imap <M-Space> <Esc>

" Press Shift-Space (may not work on your system).
"imap <S-Space> <Esc>
" Try the following so Shift-Space also enters insert mode.
"nmap <S-Space> i
"" Or just Space to enter insert mode.
"nmap <Space> i


" <Leader>c*: NERDCommenter mappings
" <Leader>cd: Switch to the directory of the open buffer
nnoremap <Leader>cd :cd %:p:h<cr>:pwd<cr>

" Maximize current split
nnoremap <Leader>a <C-w>_<C-w><Bar>

" Switch to previous split
nnoremap <leader>, <C-w>p

" Bash like keys for the command line. These resemble personal zsh mappings
cnoremap <c-a> <home>
cnoremap <c-e> <end>

" Edit macro
"nnoremap <leader>m  :<c-u><c-r><c-r>='let @'. v:register .' = '. string(getreg(v:register))<cr><c-f><left>

"let g:tmux_navigator_save_on_switch = 1
"let g:tmux_navigator_no_mappings = 1

"nnoremap <silent> {Left-mapping} :TmuxNavigateLeft<cr>
"nnoremap <silent> {Down-Mapping} :TmuxNavigateDown<cr>
"nnoremap <silent> {Up-Mapping} :TmuxNavigateUp<cr>
"nnoremap <silent> {Right-Mapping} :TmuxNavigateRight<cr>
"nnoremap <silent> {Previous-Mapping} :TmuxNavigatePrevious<cr>
