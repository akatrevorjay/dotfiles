Plug 'tpope/vim-eunuch'

" Superb motion controls
Plug 'easymotion/vim-easymotion'

Plug 'junegunn/vim-pseudocl'
Plug 'junegunn/vim-oblique'

" Find-N-Replace
Plug 'junegunn/vim-fnr'

Plug 'junegunn/vim-peekaboo'

Plug 'junegunn/vim-easy-align'

" Start interactive EasyAlign in visual mode (e.g. vip<Enter>)
    vmap <Enter> <Plug>(EasyAlign)

    " Start interactive EasyAlign for a motion/text object (e.g. gaip)
    nmap ga <Plug>(EasyAlign)

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

"" Breaks folds when switching buffers I think
" Plug 'vim-scripts/restore_view.vim'

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

" Great bindings for switching buffers and more
Plug 'tpope/vim-unimpaired'

" Delete buffer without ever closing a window
Plug 'qpkorr/vim-bufkill'

" Quoting/parenthesizing made simple
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-surround'

"" Quick date changes
Plug 'tpope/vim-speeddating'

" Plug 'tpope/vim-dotenv'
" Plug 'tpope/vim-rsi'
" Plug 'tpope/git-bump'
" Plug 'tpope/vim-projectionist'

Plug 'bagrat/vim-workspace'

" Nice start screen
Plug 'mhinz/vim-startify'

" Tabular helps line up text easily
Plug 'godlygeek/tabular', {'on': 'Tabularize'}

let g:mta_filetypes = {'html': 1, 'xhtml': 1, 'xml': 1, 'jinja2': 1, 'gohtmltmpl': 1}
Plug 'valloric/matchtagalways', {'for': keys(g:mta_filetypes)}

""
"" Notmuch: mail
""
"Plug 'felipec/notmuch-vim'
"" Notmuch mail address book (abook)
"if has('python')
"  Plug 'guyzmo/notmuch-abook'
"endif

""
"" Tasks
""

Plug 'vimwiki/vimwiki', {'branch': 'dev'}

" Taskwarrior: Fucking sick ftw
if executable('task')
    Plug 'farseer90718/vim-taskwarrior'

    " Taskwarrior: Better interface
    Plug 'tbabej/taskwiki'
endif

" Outlines (uses utl)
"Plug 'vim-voom/VOoM'

""
"" Notes
""
"Plug 'xolox/vim-notes'
"Plug 'jceb/vim-orgmode'

""
"" Presenting
""

"" may require tpope/vim-markdown
"Plug 'tybenz/vimdeck'

"Plug 'alfredodeza/posero.vim'
"let g:posero_default_mappings = 1
"let b:posero_fake_type = "^\$"
"let b:posero_push_on_non_fake = 1
"let b:posero_push_all = 1
"let b:posero_fake_type = '\v(.*)'

"Plug 'sotte/presenting.vim'

"Plug 'cohama/lexima.vim'

" let g:reveal_config = {
"     \ 'filename': 'reveal',
"     \ 'path': '~/build/reveal.js',
"     \ }
"
" Plug 'blindFS/vim-reveal', {'for': 'markdown'}

" chdir to project/vcs root on open
" Plug 'airblade/vim-rooter'
" let g:rooter_resolve_links = 0

" Visual subst
Plug 'osyo-manga/vim-over'

" Clean sessions
Plug 'tpope/vim-obsession'

" let g:prosession_dir = expand('~/.vim/session/')
" let g:prosession_default_session = 1
let g:prosession_per_branch = 1
let g:prosession_tmux_title = 1

Plug 'dhruvasagar/vim-prosession', {'on': 'Prosession'}

"" Fucks up till
" Plug 'unblevable/quick-scope'
"
" " Trigger a highlight in the appropriate direction when pressing these keys:
" let g:qs_highlight_on_keys = ['f', 'F', 't', 'T']
"
" " Trigger a highlight only when pressing f and F.
" let g:qs_highlight_on_keys = ['f', 'F']

" let g:qs_first_occurrence_highlight_color = '#afff5f' " gui vim
" let g:qs_first_occurrence_highlight_color = 155       " terminal vim

" let g:qs_second_occurrence_highlight_color = '#5fffff'  " gui vim
" let g:qs_second_occurrence_highlight_color = 81         " terminal vim

" " Map the leader key + q to toggle quick-scope's highlighting in normal/visual mode.
" " Note that you must use nmap/vmap instead of their non-recursive versions (nnoremap/vnoremap).
" nmap <leader>q <plug>(QuickScopeToggle)
" vmap <leader>q <plug>(QuickScopeToggle)

Plug 'git-time-metric/gtm-vim-plugin'

Plug 'raghur/vim-ghost', {'do': ':GhostInstall'}
