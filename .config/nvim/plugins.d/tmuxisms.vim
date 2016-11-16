if empty($TMUX)
  if has('nvim')
    Plug 'hkupty/nvimux'

    " This are the defaults
    let g:nvimux_prefix='<C-a>'
    let g:nvimux_quickterm_provider = 'Ttoggle'
    let g:nvimux_quickterm_direction = 'botright'
    let g:nvimux_quickterm_orientation = 'vertical'
    let g:nvimux_quickterm_size = ''

    "let g:nvimux_term = ':term<CR>'
    "let g:nvimux_quickterm_provider = 'Tnew'

    let g:nvimux_new_term = 'Tnew'
    let g:nvimux_close_term = 'Tclose'

    let g:nvimux_open_term_by_default=1

    "let g:nvimux_override_t=":term<CR>"
  endif
else
  " tmux-complete: "tmuxcomplete" source for tmux panes (deoplete)
  Plug 'wellle/tmux-complete.vim'

  " tmux integration
  Plug 'christoomey/vim-tmux-navigator'
  " Activate autoupdate on exit
  let g:tmux_navigator_save_on_switch = 1

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
endif
