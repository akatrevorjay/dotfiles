Plug 'Yggdroot/indentLine'

" tty
"let g:indentLine_color_term = 239

" gui
"let g:indentLine_color_gui = '#A4E57E'

" none X terminal
"let g:indentLine_color_tty_light = 7 " (default: 4)
"let g:indentLine_color_dark = 1 " (default: 2)

"let g:indentLine_char = 'c'

let g:indentLine_concealcursor = 'inc'
let g:indentLine_conceallevel = 2

" disable by default
"let g:indentLine_enabled = 0

" Generate shell prompts from airline
Plug 'edkolev/promptline.vim'  ", {'on': 'PromptLine'}

" Generate tmux status themes from airline
Plug 'edkolev/tmuxline.vim', {'on': 'TmuxLine'}

" Prettify tabs in terminal vim
Plug 'mkitt/tabline.vim'

" Airline
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" Makes the cursorcol match the airline color
Plug 'ntpeters/vim-airline-colornum'

" Awesome font icon toolkit for cui and gui including filetypes
Plug 'ryanoasis/vim-devicons'

Plug 'junegunn/vim-emoji'

"Plug 'thinca/vim-prettyprint'
