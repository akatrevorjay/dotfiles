" TODO Check if USER, feature flags etc

" Workman layout
"Plug 'nicwest/vim-workman'
"let g:workman_normal_workman = 0
"let g:workman_insert_workman = 1
"let g:workman_normal_qwerty = 1
"let g:workman_insert_qwerty = 0

" Plug 'nicwest/vim-http'
" Plug 'nicwest/bnext.vim'

" Format any txt file
Plug 'vim-scripts/Txtfmt-The-Vim-Highlighter', {'for': ['txt', 'txtfmt']}

"if v:version >= 704
"  Plug 'vim-pandoc/vim-pandoc-syntax'
"endif

"Plug 'henrik/vim-indexed-search'

Plug 'tpope/vim-eunuch'

" Superb motion controls
Plug 'easymotion/vim-easymotion'

Plug 'junegunn/vim-pseudocl'
Plug 'junegunn/vim-oblique'

" Find-N-Replace
Plug 'junegunn/vim-fnr'

Plug 'junegunn/vim-peekaboo'

Plug 'junegunn/vim-easy-align'

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
Gautocmdft python,lisp,clojure,scheme,c,cpp,objc,objcpp,json,jsonnet,javascript,automake,sh,zsh :RainbowParentheses

Plug 'vim-scripts/restore_view.vim'

"" Dynamic SQL completion via opening a db connection
" Plug 'vim-scripts/dbext.vim'

" Marks
" Plug 'kshenoy/vim-signature'

"" Lots of script helpers at s:_.blah
Plug 'vim-jp/vital.vim'
Plug 'haya14busa/underscore.vim'

" Abolish: Helpers for searching, substituting, and abbreviating multiple variants at once through {} expansion
Plug 'tpope/vim-abolish'
Plug 'tpope/vim-sleuth'
Plug 'tpope/vim-surround'

"Plug 'eugen0329/vim-esearch'

if has('nvim')
    " Forever broken
    "Plug 'tek/proteome.nvim', { 'do': ':UpdateRemotePlugins' }

    " Plug 'bfredl/nvim-ipy', { 'do': ':UpdateRemotePlugins' }

    "" Interactive ft-aware REPL
    " Plug 'hkupty/iron.nvim', { 'do': ':UpdateRemotePlugins' }
    ""
    "" bindings:
    ""
    " <leader>so
    "   Require namespace inside a list under cursor.
    "   i.e. [clojure.string :as string] sends (require '[clojure.string :as string])
    "
    " <leader>si
    "   Import namespace inside a list under cursor.
    "   i.e. [java.time LocalDate] sends (import '[java.time LocalDate])
    "
    " <leader>sn
    "   Set REPL namespace to current file.
    "
    " <leader>sr
    "   Require current file into the REPL.
    "
    " <leader>sR
    "   Require current file into the REPL, prompting for an alias.
    "
    " <leader>s.
    "   Prompt namespace and require it into the REPL.
    "
    " <leader>s/
    "   Prompt namespace and alias, requiring it into the REPL.
    "
    " <leader>ss
    "   Send outermost parens group into the REPL.
    "
    " <leader>ep
    "   Evaluate a command into the REPL, echoing the result. [experimental]
    "
    " <leader>ee
    "   Evaluate a command into the REPL, passing the data under the cursor and
    "   updating it. [experimental]
    "
    " ~scala~
    " <leader>sa
    "   Import all for namespace below.
    "
    " <leader>si
    "   Import namespace below.
    "
    " <leader>sb
    "   Send current braces block to REPL linewise.
    "
    " <leader>sl
    "   Send current line to REPL.

    "Plug 'benekastah/neomake', { 'do': ':UpdateRemotePlugins' }
    "" Run Neomake on every write
    "autocmd! BufWritePost * Neomake

    "function! BuildComposer(info)
    "	 if a:info.status != 'unchanged' || a:info.force
    "	     !cargo build --release
    "	     exec ':UpdateRemotePlugins'
    "	 endif
    "endfunction
    "Plug 'euclio/vim-markdown-composer', { 'do': function('BuildComposer'), 'on': 'MarkdownComposer' }

    "" libclang syntax hightlighting (tagless and fast)
    " Plug 'arakashic/chromatica.nvim'
    ""let g:chromatica#libclang_path='/usr/local/opt/llvm/lib'
    "let g:chromatica#responsive_mode=1
endif

Plug 'mhinz/vim-grepper'
" Mimic :grep and make ag the default tool.
let g:grepper = {
    \ 'tools': ['rg', 'ag', 'pt', 'git', 'grep'],
    \ 'open':  1,
    \ 'jump':  1,
    \ }

" Plug 'tpope/vim-dotenv'
" Plug 'tpope/vim-rsi'
" Plug 'tpope/git-bump'
" Plug 'tpope/vim-projectionist'

" " Plug 'vim-scripts/autoproto.vim'
" Plug 'vim-scripts/searchfold.vim'
" Plug 'vim-scripts/grep.vim'
" " Plug 'vim-scripts/Mark--Karkat'
" Plug 'vim-scripts/a.vim'
" Plug 'vim-scripts/netrw.vim'
" " Plug 'vim-scripts/SearchComplete'

" Plug 'pi314/pi314.asciiart.vim'
" Plug 'quafzi/vim-flow-diagram'
" Plug 'xavierchow/vim-sequence-diagram'

Plug 'FooSoft/vim-argwrap'

"Plug 'Zuckonit/vim-airline-tomato'

Plug 'Rykka/doctest.vim', { 'for': ['rst', 'markdown', 'python'] }

" Plug 'sunaku/vim-shortcut'

Plug 'KabbAmine/zeavim.vim', {'on': [
				\	'Zeavim', 'Docset',
				\	'<Plug>Zeavim',
				\	'<Plug>ZVVisSelection',
				\	'<Plug>ZVKeyDocset',
				\	'<Plug>ZVMotion'
				\ ]}

