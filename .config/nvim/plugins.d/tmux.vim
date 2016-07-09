
if ! exists($SHELL)
  finish
endif

" tmux integration
Plug 'christoomey/vim-tmux-navigator'
" Activate autoupdate on exit
let g:tmux_navigator_save_on_switch = 1

" Help vim out with mouse focus events
Plug 'tmux-plugins/vim-tmux-focus-events'

" Handle tmux panes from vim
Plug 'jebaum/vim-tmuxify'

" Send python tests to tmux split
Plug 'captbaritone/vim-vigilant'
" Control tmux from vim (again) but with tons of support
Plug 'benmills/vimux'
" Run cell blocks of code from vim in tmux
"Plug 'julienr/vim-cellmode'
" Keep env in sync with shell and vim through tmux
"Plug 'buztard/vim-nomad'

