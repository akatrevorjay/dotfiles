Plug 'Yggdroot/indentLine'

" Generate shell prompts from airline
"Plug 'edkolev/promptline.vim' ", {'on': ['Promptline', 'PromptlineSnapshot']}

" Generate tmux status themes from airline
"Plug 'edkolev/tmuxline.vim', {'on': ['Tmuxline', 'TmuxlineSnapshot']}

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
