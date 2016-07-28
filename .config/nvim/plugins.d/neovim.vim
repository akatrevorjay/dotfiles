
if ! has('nvim')
  finish
endif

"Plug 'bfredl/nvim-ipy'
"Plug 'tek/proteome.nvim'
Plug 'hkupty/iron.nvim'

Plug 'arakashic/chromatica.nvim'
"let g:chromatica#libclang_path='/usr/local/opt/llvm/lib'
let g:chromatica#responsive_mode=1


function! BuildComposer(info)
  if a:info.status != 'unchanged' || a:info.force
    !cargo build --release
    UpdateRemotePlugins
  endif
endfunction

Plug 'euclio/vim-markdown-composer', { 'do': function('BuildComposer') }

Plug 'mhinz/vim-grepper'

"" Mimic :grep and make ag the default tool.
"let g:grepper = {
"    \ 'tools': ['ag', 'git', 'grep'],
"    \ 'open':  0,
"    \ 'jump':  1,
"    \ }
