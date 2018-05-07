if empty($TMUX)
  if has('nvim')
    " broken
    " Plug 'BurningEther/nvimux'
  endif

  finish
endif

" " tmux integration
" Plug 'christoomey/vim-tmux-navigator'
" " Activate autoupdate on exit
" let g:tmux_navigator_save_on_switch = 1

"" Help vim out with mouse focus events
"Plug 'tmux-plugins/vim-tmux-focus-events'

"" Handle tmux panes from vim
"Plug 'jebaum/vim-tmuxify'

"" Send python tests to tmux split
"Plug 'captbaritone/vim-vigilant'

"" Control tmux from vim (again) but with tons of support
"Plug 'benmills/vimux'

" Run cell blocks of code from vim in tmux
"Plug 'julienr/vim-cellmode'

" Keep env in sync with shell and vim through tmux
"Plug 'buztard/vim-nomad'

Plug 'urbainvaes/vim-tmux-pilot'

" Uncomment to enable navigation of vim tabs
" let g:pilot_mode='wintab'
" let g:pilot_mode='winonly'

" Uncomment to enable creation of vim splits automatically
" let g:pilot_boundary='create'

" A useful mapping to use with this plugin
" nnoremap <nowait> <c-d> :q<cr>

