Plug 'Yggdroot/indentLine'

" Generate shell prompts from airline
Plug 'edkolev/promptline.vim'  ", {'on': ['EnablePromptline']}

" Generate tmux status themes from airline
" Plug 'edkolev/tmuxline.vim', {'on': ['Tmuxline', 'EnableTmuxline']}
" command! -nargs=* TmuxlineSnapshot echo 'Run Tmuxline first'

" Prettify tabs in terminal vim
Plug 'mkitt/tabline.vim'

" Airline
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" Makes the cursorcol match the airline color
if ! exists('g:vimpager.enabled')
    Plug 'ntpeters/vim-airline-colornum'
endif

" Awesome font icon toolkit for cui and gui including filetypes
Plug 'ryanoasis/vim-devicons'

"Plug 'thinca/vim-prettyprint'

""""""""" colors """""""""""

" No longer needed as of vim8 with termguicolors
"if ! has('gui_running') && ! has('nvim')
"  " Approximately converts gui only colorschemes to console
"  Plug 'godlygeek/csapprox'
"endif

"Plug 'vim-scripts/ScrollColors'

"Plug 'vim-scripts/tropikos'
"Plug 'w0ng/vim-hybrid'
"Plug 'vim-scripts/badwolf'
"Plug 'Pychimp/vim-luna'
"Plug 'jonathanfilip/vim-lucius'
"Plug 'trapd00r/neverland-vim-theme'
"Plug 'noahfrederick/Hemisu'
"Plug 'zaiste/Atom'
"Plug 'ratazzi/blackboard.vim'
"Plug 'effkay/argonaut.vim'
"Plug 'jedverity/feral-vim'
"Plug 'stephanedemotte/beekai'
"Plug 'marcopaganini/mojave-vim-theme'
"Plug 'trevorrjohn/vim-obsidian'
"Plug 'mhartington/oceanic-next'
""Plug 'jordwalke/VimCleanColors'
"Plug 'jordwalke/flatlandia'
"Plug 'joshdick/onedark.vim'
"Plug 'sbdchd/airline-steve'
"Plug 'whatyouhide/vim-gotham'
"Plug 'NLKNguyen/papercolor-theme'
"Plug 'marcopaganini/termschool-vim-theme'
"Plug 'tomasr/molokai'
"Plug 'gummesson/stereokai.vim'
"Plug 'aereal/vim-colors-japanesque'
"Plug 'bounceme/highwayman'
"Plug 'tyrannicaltoucan/vim-deep-space'
"Plug 'freeo/vim-kalisi'
"Plug 'morhetz/gruvbox'

Plug 'flazz/vim-colorschemes'

"Plug expand('~/.vim/bundles/colors')
"Plug expand('~/.vim/bundles/colors-trevorj')
"Plug expand('~/.vim/bundles/colors-extra')

" Broken af
"Plug 'dylanaraps/wal.vim'
