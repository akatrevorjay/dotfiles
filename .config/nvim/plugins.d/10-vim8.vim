if has('nvim') || v:version != 800
    finish
endif

Plug 'roxma/nvim-yarp'

" Requires vim8 with has('python') or has('python3')
" Requires the installation of msgpack-python. (pip install msgpack-python)
Plug 'roxma/vim-hug-neovim-rpc', {'cond': (has('python3') || has('python'))}

