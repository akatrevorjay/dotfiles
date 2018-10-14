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
" Plug 'vim-scripts/Txtfmt-The-Vim-Highlighter', {'for': ['txt', 'txtfmt']}
" Plug 'vim-scripts/txt.vim'

"if v:version >= 704
"  Plug 'vim-pandoc/vim-pandoc-syntax'
"endif

"Plug 'henrik/vim-indexed-search'
" Plug 'eugen0329/vim-esearch'

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

" Plug 'mhinz/vim-grepper'
" " Mimic :grep and make ag the default tool.
" let g:grepper = {
"     \ 'tools': ['rg', 'ag', 'pt', 'git', 'grep'],
"     \ 'open':  1,
"     \ 'jump':  1,
"     \ }

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

" argument adjustments
Plug 'FooSoft/vim-argwrap'
nnoremap <silent> <leader>a :ArgWrap<CR>

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
nnoremap <silent> <leader>? <Plug>:Zeavim<CR>
nnoremap <silent> <leader>Z <Plug>:ZVKeyDocset<CR>
nnoremap <silent> <leader>zm <Plug>:ZVMotiont<CR>

" Plug 'kopischke/vim-stay'
" set viewoptions=cursor,folds,slash,unix

"  Plug 'jceb/vim-orgmode'
" Plug 'mattn/calendar-vim'
" Plug 'vim-scripts/deb.vim'
" Plug 'vim-scripts/auto_autoread.vim'
" " Plug 'vim-scripts/refactor'
" Plug 'vim-scripts/ZoomWin'
" Plug 'vim-scripts/dante.vim'
" Plug 'vim-scripts/gtk-vim-syntax'
" Plug 'vim-scripts/utl.vim'
" " Plug 'vim-scripts/JumpToVerticalOccurrence'
" " Plug 'vim-scripts/kwbdi.vim'
" Plug 'vim-scripts/YankRing.vim'
" Plug 'vim-scripts/makeprgs'
" Plug 'vim-scripts/marvim'
" Plug 'vim-scripts/Drawit'
" Plug 'vim-scripts/asu1dark.vim'
" Plug 'vim-scripts/a.vim'
" Plug 'vim-scripts/EnhancedJumps'
" Plug 'vim-scripts/sessionman.vim'
" Plug 'vim-scripts/regreplop.vim'
" Plug 'vim-scripts/Cpp11-Syntax-Support'
" " Plug 'vim-scripts/LustyExplorer'
" Plug 'vim-scripts/python.vim'
" Plug 'vim-scripts/gitignore'
" " Plug 'vim-scripts/Vimplate-Enhanced'
" Plug 'vim-scripts/c.vim'
" Plug 'vim-scripts/utl.vim'
" Plug 'vim-scripts/searchfold.vim'
" " Plug 'vim-scripts/autoresize.vim'
" Plug 'vim-scripts/VCard-syntax'

Plug 'chemzqm/vim-easygit'
Plug 'vim-scripts/unite-gitlog'

" " Plug 'vim-scripts/NotableFt'
" Plug 'vim-scripts/Loupe'
" Plug 'vim-scripts/taglist.vim'
" " Plug 'tpope/repeat.vim'
" " Plug 'vim-scripts/tagbar.vim'
" " Plug 'tpope/speeddating.vim'
" " Plug 'vim-scripts/NrrwRgn.vim'
" " Plug 'vim-scripts/SyntaxRange.vim'
" Plug 'inkarkat/vim-SyntaxRange'
" Plug 'vim-scripts/ingo-library'

" Plug 'ivanov/vim-ipython'

Plug 'aacunningham/vim-fuzzy-stash'

