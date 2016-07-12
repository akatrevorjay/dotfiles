" Generate shell prompts from airline
Plug 'edkolev/promptline.vim'

" Generate tmux status themes from airline
Plug 'edkolev/tmuxline.vim'

" Airline
Plug 'vim-airline/vim-airline-themes'
Plug 'vim-airline/vim-airline'

" Makes the cursorcol match the airline color
Plug 'ntpeters/vim-airline-colornum'

" Nice start screen
Plug 'mhinz/vim-startify'

" Awesome font icon toolkit for cui and gui including filetypes
Plug 'ryanoasis/vim-devicons'

"Plug 'junegunn/vim-emoji'

" Show CSS colors as what they truely are.
Plug 'ap/vim-css-color'

"Plug 'thinca/vim-prettyprint'

if has('gui_running') || has('nvim')
  "" Convert CUI to GUI (may be useful in neovim since it needs gui_running to
  " NOT be checked yet still supply guifg/guibg etc
  "Plug 'jlund3/colorschemer'
else
  " Approximately converts gui only colorschemes to console
  "Plug 'godlygeek/csapprox'
endif

Plug 'vim-scripts/ScrollColors'

