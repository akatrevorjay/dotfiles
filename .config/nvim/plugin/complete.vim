" Completion:

" Wild: completion options
set wildchar=<Tab>
set wildmenu
"set wildmode=longest:full,full
"set wildmode=longest,list
"set wildmode=longest:full,list:longest,list:full
set wildmode=list:longest,list:full
set wildignore+=*.o,*.obj,.git,*.pyc,*.swp,*.swo,*.bak,*.pyo,*.pyc,*.svn,*/tmp/*,__pycache__,sdist*,bdist*,dist,build,*.egg-info
set wildoptions=tagfile

" Code complete
"inoremap <Nul> <C-x><C-o>

"set complete=.,t
set completeopt=menuone,longest,preview,noinsert,noselect

" Close preview window post comp
"autocmd! CompleteDone * if pumvisible() == 0 | pclose | endif

"" From github: zchee/deoplete-go
" neocomplete like
" https://github.com/Shougo/deoplete.nvim/blob/master/doc/deoplete.txt
set completeopt+=noinsert

" Set before than deoplete
" deoplete#mappings#_set_completeopt() in
" https://github.com/Shougo/deoplete.nvim/blob/master/autoload/deoplete/mappings.vim
" https://github.com/Shougo/deoplete.nvim/blob/master/rplugin/python3/deoplete/deoplete.py
"set completeopt+=noselect

" Line-wise completion via fzf
if exists('g:loaded_fzf')
    imap <silent><C-x><C-l> <plug>(fzf-complete-line)
endif

"if exists('g:loaded_deoplete')
if has('nvim')
    " Enable by default for these filetypes
    "Gautocmdft vim,zsh,sh,go,txt,markdown,mkd execute ':DeopleteEnable'
    " All
    let g:deoplete#enable_at_startup = 1

    "let g:deoplete#tag#cache_limit_size = 

    "" Allow <CR> to select
    "inoremap <expr><CR> pumvisible()? "\<C-y>" : "\<CR>"

    let g:deoplete#auto_complete_start_length = 1
    "let g:deoplete#enable_refresh_always = 1
    let g:deoplete#file#enable_buffer_path = 1

    "let g:deoplete#auto_complete_delay = 100
    let g:deoplete#auto_complete_delay = 50

    " Use smartcase.
    let g:deoplete#enable_smart_case = 1

    " Integrate with neopairs
    let g:deoplete#enable_auto_pairs = 'true'

    " Snippets rank
    call deoplete#custom#source('ultisnips', 'rank', 1000)
    call deoplete#custom#source('clang', 'rank', 900)
    call deoplete#custom#source('tag', 'rank', 10)
    call deoplete#custom#source('buffer', 'rank', 0)

    " Use head matcher instead of fuzzy matcher
    "call deoplete#custom#source('_', 'matchers', ['matcher_head'])
    "call deoplete#custom#source('_', 'matchers', ['matcher_head', 'matcher_full_fuzzy'])
    " Use auto delimiter feature
    call deoplete#custom#source('_', 'converters', [
      \ 'converter_remove_overlap', 'converter_truncate_abbr', 'converter_truncate_menu',
      \ 'converter_auto_delimiter', 'converter_remove_overlap', 'converter_auto_paren',
      \ 'converter_remove_paren', 'converter_truncate_abbr',
      \ ])

    "let g:deoplete#omni#functions = {}
    "let g:deoplete#omni#functions.ruby = 'rubycomplete#Complete'
    "let g:deoplete#omni#functions.javascript = [
    "	 \ 'tern#Complete',
    "	 \ 'jspc#omni'
    "	 \]
    "let g:deoplete#omni#functions.nim = 'omni#nim'
"
    "let g:deoplete#omni#input_patterns = {}
    "let g:deoplete#omni#input_patterns.ruby =
    "  \ ['[^. *\t]\.\w*', '[a-zA-Z_]\w*::']
    "let g:deoplete#omni#input_patterns.java = '[^. *\t]\.\w*'
    "let g:deoplete#omni#input_patterns.php =
    "  \ '\w+|[^. \t]->\w*|\w+::\w*'

    "call deoplete#custom#source('buffer', 'min_pattern_length', 9999)
    " Change the source rank
    "call deoplete#custom#source('buffer', 'rank', 9999)
    " Enable buffer source in C/C++ files only.
    "call deoplete#custom#source('buffer', 'filetypes', ['c', 'cpp'])
    "call deoplete#custom#source('member', 'filetypes', ['c', 'cpp'])
    " Disable the candidates in Comment/String syntaxes.
    "call deoplete#custom#source('_', 'disabled_syntaxes', ['Comment', 'String'])

    "" Sources
    "let g:deoplete#sources = {}
    "let g:deoplete#sources._ = ['buffer', 'tag']
    "let g:deoplete#sources._ = ['neosnippets', 'omni', 'member', 'buffer', 'tag']
    "let g:deoplete#sources.python = ['omni', 'member', 'buffer', 'tag']
    "let g:deoplete#sources.cpp = ['buffer', 'tag']

    "let g:deoplete#sources#_ = ['buffer', 'jedi', 'neosnippets']
    "let g:deoplete#sources#python = ['buffer', 'jedi', 'neosnippets']
    let g:deoplete#sources#python = ['jedi', 'file', 'neosnippets', 'ultisnips']
    "let g:deoplete#sources#vim = ['necovim', 'neco', 'vim', 'neosnippets']

    "let g:deoplete#sources._	 = ['buffer', 'file', 'ultisnips']
    "let g:deoplete#sources.ruby = ['buffer', 'member', 'file', 'ultisnips']
    "let g:deoplete#sources.vim  = ['buffer', 'member', 'file', 'ultisnips']
    "let g:deoplete#sources.css  = ['buffer', 'member', 'file', 'omni', 'ultisnips']
    "let g:deoplete#sources.scss = ['buffer', 'member', 'file', 'omni', 'ultisnips']

    " Add it as a deoplete source:
    "
    " let g:deoplete#sources = {}
    " let g:deoplete#sources.gitcommit=['github']
    "
    " Deoplete also needs a little configuration:
    "
    " let g:deoplete#keyword_patterns = {}
    " let g:deoplete#keyword_patterns.gitcommit = '.+'
    "
    " call deoplete#util#set_pattern(
    "	\ g:deoplete#omni#input_patterns,
    "	\ 'gitcommit', [g:deoplete#keyword_patterns.gitcommit])
    "
    "let g:deoplete#max_menu_width = 80
    let g:deoplete#max_menu_width = 180
    let g:deoplete#sources#use_cache = 1

    let g:deoplete#sources#go = 'vim-go'
    let g:deoplete#sources#go#package_dot = 1
    let g:deoplete#sources#go#sort_class = ['package', 'func', 'type', 'var', 'const']
    let g:deoplete#sources#go#pointer = 1
    let g:deoplete#sources#go#cgo = 1  " See below for libclang config
    let g:deoplete#sources#go#auto_goos = 1
    let g:deoplete#sources#go#json_directory = expand("~/.cache/deoplete/go/$GOOS_$GOARCH")
    let g:deoplete#sources#go#use_cache = 1
    let g:deoplete#sources#go#source_importer = 1
    let g:deoplete#sources#go#builtin_objects = 1

    if !empty('$GOPATH')
      let g:deoplete#sources#go#gocode_binary = expand($GOPATH.'/bin/gocode')
    endif
 
    " clang
    for s:llvm_version in ['7', '7.0', '6', '6.0', '5', '5.0', '8', '8.0']
      let s:clang_dir = '/usr/lib/clang/'.s:llvm_version
      let s:llvm_dir = '/usr/lib/llvm-'.s:llvm_version

      if isdirectory(s:clang_dir) && isdirectory(s:llvm_dir)
        echomsg 'Found llvm @ ' . s:llvm_dir . ' and clang @ ' . s:clang_dir . ' with version=' . s:llvm_version

        let g:llvm_version = s:llvm_version
        let g:llvm_dir = s:llvm_dir
        let g:clang_dir = s:clang_dir

        break
      endif
    endfor

    if !empty(g:llvm_dir)
      let g:deoplete#sources#clang#clang_header = g:clang_dir
      let g:deoplete#sources#clang#libclang_path = g:llvm_dir . '/lib/libclang.so.1'
      " let g:deoplete#sources#go#cgo#libclang_path = g:deoplete#sources#clang#libclang_path
    endif

    let g:deoplete#sources#clang#clang_complete_database = '.'
    let g:deoplete#sources#clang#std#c = 'c11'
    let g:deoplete#sources#clang#std#cpp = 'c++1z'
    let g:deoplete#sources#clang#sort_algo = 'priority'


    " Keys

    "" <C-h>, <BS>: close popup and delete backword char.
    "inoremap <expr><C-h> deoplete#mappings#smart_close_popup()."\<C-h>"
    "inoremap <expr><BS>  deoplete#mappings#smart_close_popup()."\<C-h>"

    "" <CR>: close popup and save indent.
    "inoremap <silent> <CR> <C-r>=<SID>my_cr_function()<CR>
    "function! s:my_cr_function() abort
    " return deoplete#mappings#close_popup() . "\<CR>"
    "endfunction

    " Auto close preview window post completion
    "autocmd CompleteDone * pclose!

    let g:deoplete#ignore_sources = {}
    let g:deoplete#ignore_sources._ = ['buffer']
    let g:deoplete#ignore_sources.python = ['buffer', 'member', 'tag']

    " Insert <TAB> or select next match
    "inoremap <silent> <expr> <Tab> utils#tabComplete()

    " Manually trigger tag autocomplete
    "inoremap <silent> <expr> <C-]> utils#manualTagComplete()

    " <C-h>, <BS>: close popup and delete previous char
    "inoremap <expr><C-h> deoplete#mappings#smart_close_popup()."\<C-h>"
    "inoremap <expr><BS> deoplete#mappings#smart_close_popup()."\<C-h>"

    "" tmux-complete
    " w/deoplete
    let g:tmuxcomplete#trigger = ''

    "" Completion: Jedi

    let g:deoplete#sources#jedi#show_docstring = 1
    let g:deoplete#sources#jedi#statement_length = 250
    "let g:deoplete#sources#jedi#short_types = 1
    let g:deoplete#sources#jedi#enable_cache = 1
    let g:deoplete#sources#jedi#show_docstring = 1
    " let g:deoplete#sources#jedi#worker_threads = 4
    let g:deoplete#sources#jedi#server_timeout = 20
    "let g:jedi#show_call_signatures = 1 " show in cmdline
    "let g:jedi#show_call_signatures_delay = 250 " ms (500)

    " FakeGIR cache for completion
    " let g:deoplete#sources#jedi#extra_path = [
    "	  \ expand('~/.cache/fakegir'),
    "	  \ ]

    " Remove jedi doc buffer automagically
    "autocmd BufWinEnter '__doc__' setlocal bufhidden=delete

    if exists('g:loaded_deoplete_jedi')
      "" jedi for deoplete
      "Gautocmdft python setlocal omnifunc=jedi#completions
      let g:jedi#auto_initialization = 1
      let g:jedi#auto_vim_configuration = 0
      "let g:jedi#popup_on_dot = 0
      "let g:jedi#popup_select_first = 0
      let g:jedi#completions_enabled = 0
      "let g:jedi#force_py_version = 3
      "let g:jedi#smart_auto_mappings = 0
      let g:jedi#max_doc_height = 100

      "if !exists('g:deoplete#force_omni_input_patterns')
      " let g:deoplete#force_omni_input_patterns = {}
      "endif
      "let g:deoplete#force_omni_input_patterns.python =
      "   \ '\%([^. \t]\.\|^\s*@\|^\s*from\s.\+import \|^\s*from \|^\s*import \)\w*'
    endif

    " Clang:
    " TODO is this right?
    if exists('g:loaded_clang')
      " Deoplete support
      let g:clang_complete_auto = 0
      let g:clang_auto_select = 0
      let g:clang_omnicppcomplete_compliance = 0
      let g:clang_make_default_keymappings = 0
      "let g:clang_use_library = 1
    endif

    " Tern/js
    " Use deoplete.
    let g:tern_request_timeout = 1
    let g:tern_show_signature_in_pum = '1'
    " Use tern_for_vim.
    let g:tern#command = ["tern"]
    let g:tern#arguments = ["--persistent"]

elseif exists('g:loaded_ncm')
  " When the <Enter> key is pressed while the popup menu is visible, it only hides the menu. Use this mapping to hide the menu and also start a new line.
  inoremap <expr> <CR> (pumvisible() ? "\<c-y>\<cr>" : "\<CR>")

  " Use tab to select the popup menu:
  "inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
  "inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"

  " css completion via `csscomplete#CompleteCSS`
  " The `'cm_refresh_patterns'` is PCRE.
  " Be careful with `'scoping': 1` here, not all sources, especially omnifunc,
  " can handle this feature properly.
  au User CmSetup call cm#register_source({'name' : 'cm-css',
		  \ 'priority': 9, 
		  \ 'scoping': 1,
		  \ 'scopes': ['css','scss'],
		  \ 'abbreviation': 'css',
		  \ 'cm_refresh_patterns':[':\s+\w*$'],
		  \ 'cm_refresh': {'omnifunc': 'csscomplete#CompleteCSS'},
		  \ })

elseif exists('g:loaded_ycm')

    " Python: YCM {{{
    " Extra baby
    "let g:ycm_global_ycm_extra_conf = "~/.vim/.ycm_extra_conf.py"

    " Disable <tab> in pum
    let g:ycm_key_list_select_completion=[]
    let g:ycm_key_list_previous_completion=[]

    "let g:ycm_key_list_select_completion=['<TAB>', '<Down>']
    "let g:ycm_key_list_previous_completion=['<S-TAB>', '<Up>']

    " Identifier based completion
    let g:ycm_min_num_of_chars_for_completion = 2
    let g:ycm_min_num_identifier_candidate_chars = 2

    let g:ycm_auto_trigger = 1
    let g:ycm_always_populate_location_list = 0
    let g:ycm_disable_for_files_larger_than_kb = 1000

    let g:ycm_autoclose_preview_window_after_completion = 1
    let g:ycm_autoclose_preview_window_after_insertion = 1
    let g:ycm_seed_identifiers_with_syntax = 1
    let g:ycm_collect_identifiers_from_tags_files = 1
    let g:ycm_complete_in_comments = 1
    let g:ycm_goto_buffer_command = 'horizontal-split'

    "let g:ycm_semantic_triggers =  {
    "	   \   'python': ['.', ',', '(', ')'],
    "	   \   'c' : ['->', '.'],
    "	   \   'objc' : ['->', '.', 're!\[[_a-zA-Z]+\w*\s', 're!^\s*[^\W\d]\w*\s',
    "	   \		 're!\[.*\]\s'],
    "	   \   'ocaml' : ['.', '#'],
    "	   \   'cpp,objcpp' : ['->', '.', '::'],
    "	   \   'perl' : ['->'],
    "	   \   'php' : ['->', '::'],
    "	   \   'cs,java,javascript,typescript,d,perl6,scala,vb,elixir,go' : ['.'],
    "	   \   'ruby' : ['.', '::'],
    "	   \   'lua' : ['.', ':'],
    "	   \   'erlang' : [':'],
    "	   \ }

    "YCM comes with support for UltiSnips (snippet suggestions in the popup menu),
    "but you'll have to change the UltiSnips mappings. See ':h UltiSnips-triggers'
    "in Vim for details. You'll probably want to change some/all of the following
    "options:
    ">
    "  g:UltiSnipsExpandTrigger
    "  g:UltiSnipsJumpForwardTrigger
    "  g:UltiSnipsJumpBackwardTrigger
    " }}}

    " Python omni is handled by Jedi <3
    "Gautocmdft python setlocal omnifunc=pythoncomplete#Complete
    "Gautocmdft python setlocal completefunc=pythoncomplete#Complete
    Gautocmdft php setlocal omnifunc=phpcomplete#CompletePHP
    Gautocmdft css setlocal omnifunc=csscomplete#CompleteCSS
    Gautocmdft html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
    Gautocmdft xml setlocal omnifunc=xmlcomplete#CompleteTags
    "Gautocmdft javascript setlocal omnifunc=javascriptcomplete#CompleteJS

    " TODO default to syntaxcomplete#Complete
    "set completefunc=syntaxcomplete#Complete
    "set omnifunc=syntaxcomplete#Complete
endif

if !exists('g:loaded_deoplete')
    "let g:tmuxcomplete#trigger = 'completefunc'
    "let g:tmuxcomplete#trigger = 'omnifunc'

    " Python: Jedi {{{
    let g:jedi#auto_initialization = 1
    let g:jedi#use_tabs_not_buffers = 1
    let g:jedi#use_splits_not_buffers = 'left'
    let g:jedi#use_splits_not_buffers = 1
    let g:jedi#popup_on_dot = 1
    let g:jedi#popup_select_first = 0
    " Jedi displays function call signatures in insert mode in real-time, highlighting the current argument.
    " The call signatures can be displayed as a pop-up in the buffer (set to 1, the default), which has the
    " advantage of being easier to refer to, or in Vim's command line aligned with the function call (set to 2),
    " which can improve the integrity of Vim's undo history.
    let g:jedi#max_doc_height = 30
    let g:jedi#auto_close_doc = 0
    "let g:jedi#squelch_py_warning = 1
    let g:jedi#goto_definitions_command = '<leader>gg'

    "let g:jedi#show_call_signatures = 1
    let g:jedi#show_call_signatures = 2 " show in cmdline
    let g:jedi#show_call_signatures_delay = 250 " ms (500)

    " Default mappings:
    "let g:jedi#goto_command = "<leader>d"
    "let g:jedi#goto_assignments_command = "<leader>g"
    "let g:jedi#documentation_command = "K"
    "let g:jedi#usages_command = "<leader>n"
    "let g:jedi#completions_command = "<C-Space>"
    "let g:jedi#rename_command = "<leader>r"

    "inoremap <F2> <ESC>K!i

    " Reload Jedi when pyenv changes
    if exists('g:loaded_jedi') && jedi#init_python()
      function! s:jedi_auto_force_py_version() abort
	let major_version = pyenv#python#get_internal_major_version()
	call jedi#force_py_version(major_version)
      endfunction
      augroup vim-pyenv-custom-augroup
	autocmd! *
	autocmd User vim-pyenv-activate-post   call s:jedi_auto_force_py_version()
	autocmd User vim-pyenv-deactivate-post call s:jedi_auto_force_py_version()
      augroup END
  endif
    " }}}
endif

