" TODO Check if USER, feature flags etc

" Workman layout
"Plug 'nicwest/vim-workman'
"let g:workman_normal_workman = 0
"let g:workman_insert_workman = 1
"let g:workman_normal_qwerty = 1
"let g:workman_insert_qwerty = 0

"Plug 'nicwest/vim-http'
"Plug 'nicwest/bnext.vim'

" Format any txt file
"Plug 'vim-scripts/Txtfmt-The-Vim-Highlighter'

"if v:version >= 704
"  Plug 'vim-pandoc/vim-pandoc-syntax'
"endif

"Plug 'henrik/vim-indexed-search'

"Plug 'tpope/vim-eunuch'

" Superb motion controls
"Plug 'easymotion/vim-easymotion'

Plug 'junegunn/vim-pseudocl'
Plug 'junegunn/vim-oblique'

" Find-N-Replace
"Plug 'junegunn/vim-fnr'

"Plug 'junegunn/vim-peekaboo'

"Plug 'junegunn/vim-easy-align'
"Plug 'thelocehiliosan/vim-byrne'

" Make f usable and more powerful
", {'on': '<Plug>'}
Plug 'rhysd/clever-f.vim'

"" multiple cursors
"Plug 'terryma/vim-multiple-cursors'
"function g:Multiple_cursors_before()
"    let g:deoplete#disable_auto_complete = 1
"endfunction
"function g:Multiple_cursors_after()
"    let g:deoplete#disable_auto_complete = 0
"endfunction

" RainbowParantheses
Plug 'junegunn/rainbow_parentheses.vim'
Gautocmdft lisp,clojure,scheme :RainbowParentheses

"Plug 'vim-scripts/restore_view.vim'

"" Dynamic SQL completion via opening a db connection
"Plug 'vim-scripts/dbext.vim'

" Marks
"Plug 'kshenoy/vim-signature'

"" Lots of script helpers at s:_.blah
"Plug 'vim-jp/vital.vim'
"Plug 'haya14busa/underscore.vim'

" Abolish: Helpers for searching, substituting, and abbreviating multiple variants at once through {} expansion
Plug 'tpope/vim-abolish'

"Plug 'eugen0329/vim-esearch'

if has('nvim')
    "Plug 'bfredl/nvim-ipy'
    "Plug 'tek/proteome.nvim'

    " Interactive ft-aware REPL
    Plug 'hkupty/iron.nvim', { 'do': ':UpdateRemotePlugins' }

    Plug 'benekastah/neomake', { 'do': ':UpdateRemotePlugins' }
    "" Run Neomake on every write
    "autocmd! BufWritePost * Neomake

    " Argumentative aids with manipulating and moving between function arguments.
    Plug 'PeterRincker/vim-argumentative'
    "nmap [; <Plug>Argumentative_Prev
    "nmap ]; <Plug>Argumentative_Next
    "xmap [; <Plug>Argumentative_XPrev
    "xmap ]; <Plug>Argumentative_XNext
    "nmap <; <Plug>Argumentative_MoveLeft
    "nmap >; <Plug>Argumentative_MoveRight
    "xmap i; <Plug>Argumentative_InnerTextObject
    "xmap a; <Plug>Argumentative_OuterTextObject
    "omap i; <Plug>Argumentative_OpPendingInnerTextObject
    "omap a; <Plug>Argumentative_OpPendingOuterTextObject

    function! BuildComposer(info)
        if a:info.status != 'unchanged' || a:info.force
            !cargo build --release
            exec ':UpdateRemotePlugins'
        endif
    endfunction
    Plug 'euclio/vim-markdown-composer', { 'do': function('BuildComposer') }

    "" libclang syntax hightlighting (tagless and fast)
    "Plug 'arakashic/chromatica.nvim'
    ""let g:chromatica#libclang_path='/usr/local/opt/llvm/lib'
    "let g:chromatica#responsive_mode=1
endif

Plug 'mhinz/vim-grepper'
" Mimic :grep and make ag the default tool.
let g:grepper = {
    \ 'tools': ['ag', 'git', 'grep'],
    \ 'open':  0,
    \ 'jump':  1,
    \ }

"Plug 'tpope/vim-dotenv'
"Plug 'tpope/vim-rsi'
"Plug 'tpope/git-bump'
"Plug 'tpope/vim-projectionist'

"Plug 'vim-scripts/autoproto.vim'
"Plug 'vim-scripts/searchfold.vim'
"Plug 'vim-scripts/grep.vim'
"Plug 'vim-scripts/Mark--Karkat'
"Plug 'vim-scripts/a.vim'
"Plug 'vim-scripts/netrw.vim'
"Plug 'vim-scripts/SearchComplete'

"Plug 'vim-scripts/xoria256.vim'

"Plug 'pi314/pi314.asciiart.vim'
"Plug 'quafzi/vim-flow-diagram'
"Plug 'xavierchow/vim-sequence-diagram'

"Plug 'FooSoft/vim-argwrap'

"Plug 'Zuckonit/vim-airline-tomato'
