
if ! has('nvim')
  finish
endif

" Esc should exit terminal mode to normal mode, as you'd expect.
tnoremap <Esc> <C-\><C-n>

" Make movement keys work as expected, even from terminal mode.
tnoremap <C-h> <C-\><C-n><C-w>h
tnoremap <C-j> <C-\><C-n><C-w>j
tnoremap <C-k> <C-\><C-n><C-w>k
tnoremap <C-l> <C-\><C-n><C-w>l

tnoremap <C-Left> <C-\><C-n><C-w>h
tnoremap <C-Down> <C-\><C-n><C-w>j
tnoremap <C-Up> <C-\><C-n><C-w>k
tnoremap <C-Right> <C-\><C-n><C-w>l

"nnoremap <C-h> <C-w>h
"nnoremap <C-j> <C-w>j
"nnoremap <C-k> <C-w>k
"nnoremap <C-l> <C-w>l

" Automatically switch to terminal mode
Gautocmd BufEnter term://* startinsert

