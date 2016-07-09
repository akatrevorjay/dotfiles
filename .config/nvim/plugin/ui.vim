" UI Setup: Colors, fonts, mouse options

""
"" GUI
""

if has('gui_running') || has('nvim')
  set guioptions=acMh
  set mousefocus " focus follows mouse in gvim

  ""
  "" Font: GUI font selection is different per OS, this is highly annoying.
  "" TODO Function to set this that pays attention to OS, just give it a name and a size, done.
  ""

  if has('gui_macvim')
    " YEAH BABY LIGATURE SUPPORT
    set macligatures
    set fullscreen

    " Oh Fira Code, how I adore you.
    set guifont=Fira\ Code\ Retina:h14
    set guifontwide=Fira\ Code\ Retina:h14
  elseif has('gui_gtk2')
    set guifont=Monoid\ 12
    set guifontwide=Monoid\ 12
  elseif has('gui_photon')
    set guifont=FiraCode-Retina\:s16
    set guifontwide=FiraCode-Retina\:s16
  elseif has('gui_kde')
    set guifont=Menlo\ for\ Powerline/12/-1/5/50/0/0/0/1/0
  elseif has('x12')  " Should this be x11?
    set guifont=-*-courier-medium-r-normal-*-*-180-*-*-m-*-*
  endif
else
  " 256 color mode for term
  set t_Co=256
  " Shit color mode for shit term
  "set t_Co=88

  " Use CSApprox in normal vim to match gui colors approximately
  let g:CSApprox_attr_map = { 'bold' : 'bold', 'italic' : 'underline', 'sp' : 'fg' }
endif

