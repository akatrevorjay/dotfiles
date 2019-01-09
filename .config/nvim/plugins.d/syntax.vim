" Plyglot pack:
" applescript (syntax)
" ansible (syntax, indent, ftplugin, ftdetect)
" arduino (syntax, indent, ftdetect)
" blade (syntax, indent, ftplugin, ftdetect)
" c++11 (syntax)
" c/c++ (syntax)
" cjsx (ftdetect, syntax, ftplugin)
" clojure (syntax, indent, autoload, ftplugin, ftdetect)
" coffee-script (syntax, indent, compiler, autoload, ftplugin, ftdetect)
" cryptol (syntax, compiler, ftplugin, ftdetect)
" crystal (syntax, indent, autoload, ftplugin, ftdetect)
" cql (syntax, ftdetect)
" css (syntax)
" cucumber (syntax, indent, compiler, ftplugin, ftdetect)
" dart (syntax, indent, autoload, ftplugin, ftdetect)
" dockerfile (syntax, ftdetect)
" elixir (syntax, indent, compiler, ftplugin, ftdetect)
" elm (syntax, indent, autoload, ftplugin, ftdetect)
" emberscript (syntax, indent, ftplugin, ftdetect)
" emblem (syntax, indent, ftplugin, ftdetect)
" erlang (syntax, indent, ftdetect)
" fish (syntax, indent, compiler, autoload, ftplugin, ftdetect)
" git (syntax, indent, ftplugin, ftdetect)
" glsl (syntax, indent, ftdetect)
" go (syntax, compiler, indent, ftdetect)
" groovy (syntax)
" haml (syntax, indent, compiler, ftplugin, ftdetect)
" handlebars (syntax, indent, ftplugin, ftdetect)
" haskell (syntax, indent, ftplugin, ftdetect)
" haxe (syntax, ftdetect)
" html5 (syntax, indent, autoload, ftplugin)
" jasmine (syntax, ftdetect)
" javascript (syntax, indent, ftdetect, ftplugin, extras)
" json (syntax, indent, ftplugin, ftdetect)
" jst (syntax, indent, ftdetect)
" jsx (ftdetect, after)
" julia (syntax, indent, ftdetect)
" kotlin (syntax, indent, ftdetect)
" latex (syntax, indent, ftplugin)
" less (syntax, indent, ftplugin, ftdetect)
" liquid (syntax, indent, ftplugin, ftdetect)
" livescript (syntax, indent, compiler, ftplugin, ftdetect)
" lua (syntax, indent)
" mako (syntax, indent, ftplugin, ftdetect)
" markdown (syntax, ftdetect)
" nginx (syntax, indent, ftdetect)
" nim (syntax, compiler, indent, ftdetect)
" nix (syntax, ftplugin, ftdetect)
" objc (ftplugin, syntax, indent)
" ocaml (syntax, indent, ftplugin)
" octave (syntax)
" opencl (syntax, indent, ftplugin, ftdetect)
" perl (syntax, indent, ftplugin, ftdetect)
" pgsql (syntax, ftdetect)
" php (syntax)
" plantuml (syntax, indent, ftplugin, ftdetect)
" powershell (syntax, indent, ftplugin, ftdetect)
" protobuf (syntax, indent, ftdetect)
" pug (syntax, indent, ftplugin, ftdetect)
" puppet (syntax, indent, ftplugin, ftdetect)
" purescript (syntax, indent, ftplugin, ftdetect)
" python (syntax, indent)
" python-compiler (compiler, autoload, ftdetect)
" qml (syntax, indent, ftplugin, ftdetect)
" r-lang (syntax, ftplugin)
" raml (syntax, ftplugin, ftdetect)
" ragel (syntax)
" rspec (syntax, ftdetect)
" ruby (syntax, indent, compiler, autoload, ftplugin, ftdetect)
" rust (syntax, indent, compiler, autoload, ftplugin, ftdetect)
" sbt (syntax, ftdetect)
" scala (syntax, indent, compiler, ftplugin, ftdetect)
" slim (syntax, indent, ftplugin, ftdetect)
" solidity (syntax, indent, ftdetect)
" stylus (syntax, indent, ftplugin, ftdetect)
" swift (syntax, indent, ftplugin, ftdetect)
" systemd (syntax, ftdetect)
" textile (syntax, ftplugin, ftdetect)
" thrift (syntax, ftdetect)
" tmux (syntax, ftplugin, ftdetect)
" tomdoc (syntax)
" toml (syntax, ftplugin, ftdetect)
" twig (syntax, indent, ftplugin)
" typescript (syntax, indent, compiler, ftplugin, ftdetect)
" vala (syntax, indent, ftdetect)
" vbnet (syntax)
" vcl (syntax, ftdetect)
" vm (syntax, indent, ftdetect)
" xls (syntax)
" yaml (syntax, ftplugin)
" yard (syntax)
Plug 'sheerun/vim-polyglot'
let g:polyglot_disabled = [
    \ 'python',
    \ 'go',
    \ 'javascript',
    \ 'markdown',
    \ 'css',
    \ 'json',
    \ ]
    " \ 'rust',
    "\ 'c++11',
    "\ 'nim',
    "\ 'dart',
    "\ 'typescript',

"Plug 'spacewander/openresty-vim', {'for': 'nginx'}

" Ledger
Plug 'ledger/vim-ledger', {'for': 'ledger'}

" GPG
Plug 'jamessan/vim-gnupg', {'for': 'gpg'}

" Show CSS colors as what they truely are.
Plug 'ap/vim-css-color'

"" BATS test runner and syntax
Plug 'markcornick/vim-bats', {'for': 'bats'}

" Better json
Plug 'elzr/vim-json', {'for': ['json']}

" JSONnet
Plug 'google/vim-jsonnet', {'for': ['jsonnet']}

" AWS CloudFormation
"Plug 'm-kat/aws-vim'

"" ROS
" Plug 'taketwo/vim-ros'
" au BufRead,BufNewFile *.launch setf roslaunch
au BufRead,BufNewFile *.launch setf xml

" Arduino
Plug 'jplaut/vim-arduino-ino', {'for': 'arduino'}

" Go
if has('nvim')
    " " Replacement for nvim
    " Plug 'zchee/nvim-go',
    "             \{ 'for': 'go', 'do': 'make' }
    " Plug $GOPATH.'/src/github.com/zchee/nvim-go',
    "             \{ 'for': 'go', 'do': 'make' }
else
    Plug 'fatih/vim-go', {'for': 'go'}
endif

"" Clang
"Plug 'Rip-Rip/clang_complete', {'for': ['c', 'cpp', 'objc', 'objcpp']}
"Plug 'osyo-manga/vim-marching', {'for': ['c', 'cpp', 'objc', 'objcpp']}


"" Ruby
"Plug 'osyo-manga/vim-monster'


"" Javascript
""Plug 'moll/vim-node'  "
"Plug 'ternjs/tern_for_vim', {'for': ['json', 'javascript']}
" Plug 'kchmck/vim-coffee-script', {'for': 'coffee'}
"Plug 'dart-lang/dart-vim-plugin', {'for': 'dart'}
"" syntax
""Plug 'othree/yajs.vim', {for': ['json', 'javascript']}
""Plug 'othree/es.next.syntax.vim', {'for': ['json', 'javascript']}
"" JavaScript Parameter Complete(JSPC): cemp for func params, such as event names, crypto algorithms, and common locales
" Plug 'othree/jspc.vim', {'for': ['json', 'javascript']}
" Plug 'othree/javascript-libraries-syntax.vim', {'for': ['json', 'javascript']}

" Gautocmdft javascript let b:javascript_lib_use_jquery = 1
" Gautocmdft javascript let b:javascript_lib_use_underscore = 0
" Gautocmdft javascript let b:javascript_lib_use_backbone = 0
" Gautocmdft javascript let b:javascript_lib_use_prelude = 0
" Gautocmdft javascript let b:javascript_lib_use_angularjs = 1


" Plug 'othree/svg-properties-syntax.vim'
Plug 'othree/html5.vim', {'for': 'html'}
"" Update the bult-in CSS complete function to latest CSS standard.
Plug 'othree/csscomplete.vim', {'for': 'css'}
" autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS noci


"" Yet Another Typescript Syntax
"Plug 'HerringtonDarkholme/yats.vim'  ", {'for': 'typescript'}


"" nim
"Plug 'baabelfish/nvim-nim', {'for': 'nim'}
""Plug 'zah/nim.vim', {'for': 'nim'}


" Hex
Plug 'Shougo/vinarise.vim', {'for': ['hex', 'xxd', 'bin']}


" ZSH "official" vim syntax, definitely more up to date.
Plug 'chrisbra/vim-zsh', {'for': ['zsh', 'sh']}


" VimL color improvements
Plug 'trapd00r/vim-after-syntax-vim', {'for': 'vim'}
"Plug 'tpope/vim-scriptease'


" Salt
Plug 'saltstack/salt-vim', {'for': 'sls'}


" Jinja2
Plug 'Glench/Vim-Jinja2-Syntax', {'for': ['html', 'j2', 'htm', 'jinja2', 'jinja', 'sls']}


" Ello poppet
" Plug 'rodjek/vim-puppet', {'for': 'puppet'}

"
" TOML
" Hey kids, don't name software after yourself, you can do better.
"
Plug 'cespare/vim-toml', {'for': 'toml'}


" Tmux.conf syntax
"Plug 'tmux-plugins/vim-tmux', {'for': 'tmux'}


" CSV
Plug 'chrisbra/csv.vim', {'for': 'csv'}


" Webdev syntax/helpers
Plug 'mattn/emmet-vim', {'for': ['html', 'xhtml', 'xml', 'j2', 'jinja', 'jinja2', 'sls', 'css', 'less', 'sass']}


"" Markdown
"Plug 'plasticboy/vim-markdown'
" Plug 'tpope/vim-markdown', {'for': 'markdown'}
" Plug 'kannokanno/previm', {'for': ['markdown']}

Plug 'aouelete/sway-vim-syntax', {'for': 'sway'}

Plug 'andrewstuart/vim-kubernetes', {'for': ['yaml', 'tpl', 'gotexttmpl', 'json', 'mustache']}

Plug 'dzeban/vim-log-syntax', {'for': 'log'}
Plug 'vim-scripts/httplog', {'for': ['log']}

""
"" Language: Python
""

" Allows for python rst docstring support as well
" A bit problematic as it's slow as balls
Plug 'Rykka/riv.vim', {'for': ['markdown', 'python', 'rst']}
" Plug 'okcompute/vim-python-motions', {'for': 'python'}

" python text objects and motions
Plug 'jeetsukumaran/vim-pythonsense', {'for': ['python']}

"Plug 'hdima/python-syntax', {'for': 'python'}
" Plug 'achimnol/python-syntax', {'for': 'python'}
" Plug 'vim-python/python-syntax', {'for': 'python'}

" Jedi:
Plug 'davidhalter/jedi-vim', {'for': 'python'}
Plug 'python-rope/ropevim', {'for': 'python'}
" Plug 'wilywampa/vim-ipython', {'for': 'python'}

" Indenting:
"Plug 'hynek/vim-python-pep8-indent'
"Plug 'michaeljsmith/vim-indent-object'
Plug 'fisadev/vim-isort', {'for': 'python'}

" Folding:
Plug 'tmhedberg/SimpylFold', {'for': 'python'}
let g:SimpylFold_docstring_preview = 1

" Testing:
Plug 'alfredodeza/pytest.vim', {'for': 'python'}

" Docs
Plug 'fs111/pydoc.vim', {'for': 'python'}

" Formatting: Better formatter (yapf > autopep8)
"
" The style used to format the buffer is checking the following in order:
" 1. b:yapf_format_style
" 2. Local '.yapf.style' for the file's project (or current directory for unsaved files)
" 3. g:yapf_format_style
" 4. pep8
"
"Plug 'pignacio/vim-yapf-format'
"let g:yapf_format_style = 'google'
""let g:yapf_format_yapf_location = '/path/to/f'

" Argumentative aids with manipulating and moving between function arguments.
Plug 'PeterRincker/vim-argumentative'
nmap [; <Plug>Argumentative_Prev
nmap ]; <Plug>Argumentative_Next
xmap [; <Plug>Argumentative_XPrev
xmap ]; <Plug>Argumentative_XNext
nmap <; <Plug>Argumentative_MoveLeft
nmap >; <Plug>Argumentative_MoveRight
xmap i; <Plug>Argumentative_InnerTextObject
xmap a; <Plug>Argumentative_OuterTextObject
omap i; <Plug>Argumentative_OpPendingInnerTextObject
omap a; <Plug>Argumentative_OpPendingOuterTextObject

""
"" Hashivim
""

"" Vim plugins/syntax for hashicorp tooling
"" Run Terraform files with tab compl
Plug 'hashivim/vim-terraform', {'for': ['tf', 'tfvars']}
"Plug 'hashivim/vim-packer'
"Plug 'hashivim/vim-consul'
" Plug 'hashivim/vim-vagrant', {'for': 'vagrantfile'}
"Plug 'hashivim/vim-vaultproject'
"Plug 'hashivim/vim-nomadproject'
"Plug 'hashivim/vim-ottoproject'

"" TidalCycles
" Plug 'munshkr/vim-tidal', {'for': 'tidal'}


" cpp
Plug 'octol/vim-cpp-enhanced-highlight', {'for': ['c', 'cpp', 'objc', 'objcpp']}
let g:cpp_class_scope_highlight = 1
" Highlighting of member variables is disabled by default. To enable set
let g:cpp_member_variable_highlight = 1
" Highlighting of class names in declarations is disabled by default. To enable set
let g:cpp_class_decl_highlight = 1
" There are two ways to hightlight template functions. Either
let g:cpp_experimental_simple_template_highlight = 1
" which works in most cases, but can be a little slow on large files. Alternatively set
let g:cpp_experimental_template_highlight = 1
" which is a faster implementation but has some corner cases where it doesn't work.
" Note: C++ template syntax is notoriously difficult to parse, so don't expect this feature to be perfect.
" Highlighting of library concepts is enabled by
let g:cpp_concepts_highlight = 1
" This will highlight the keywords concept and requires as well as all named requirements (like DefaultConstructible) in the standard library.
" Highlighting of user defined functions can be disabled by
let g:cpp_no_function_highlight = 1

" wtf https://github.com/vim-jp/vim-cpp/issues/16
let c_no_curly_error=1


" Plug 'JBakamovic/cxxd-vim', {'for': ['c', 'cpp', 'objc', 'objcpp']}
Plug 'Chilledheart/vim-clangd', {'for': ['c', 'cpp', 'objc', 'objcpp']}
" Default searches PATH
" let g:clangd#clangd_executable = '/usr/bin/clangd'
let g:clangd#codecomplete_timeout = 10  " def 100ms

Gautocmdft c,cpp,objc,objcpp nnoremap <buffer><Leader>cf :ClangdFormat<CR>
Gautocmdft c,cpp,objc,objcpp vnoremap <buffer><Leader>cf :<C-u>ClangdFormat<CR>
au FileType c,cpp,objc,objcpp nnoremap <leader>j :ClangdGotoDefinition<CR>
au FileType c,cpp,objc,objcpp nnoremap <leader>d :ClangdShowDetailedDiagnostic<CR>
au FileType c,cpp,objc,objcpp nnoremap <leader>c :ClangdShowCursorDetail<CR>
au FileType c,cpp,objc,objcpp nnoremap <leader>h :ClangdDocumentHighlight<CR>


" Code format the selected code
"
" You can use :<C-u> ClangdFormat to code format the specified code
"
" If you prefer to shortcut, here is an example:
"
au FileType c,cpp,objc,objcpp nnoremap <buffer><Leader>cf :ClangdFormat<CR>
au FileType c,cpp,objc,objcpp vnoremap <buffer><Leader>cf :<C-u>ClangdFormat<CR>

" Go to Definition key binding
"
" You can use :ClangdGotoDefinition to jump the definition of current cursor
"
" If you prefer to shortcut, here is an example:
"
au FileType c,cpp,objc,objcpp nnoremap <leader>j :ClangdGotoDefinition<CR>

" Show diagnostic key binding
"
" You can use :ClangdShowDetailedDiagnostic to show the detailed diagnostic for current line.
"
" If you prefer to shortcut, here is an example:
"
au FileType c,cpp,objc,objcpp nnoremap <leader>d :ClangdShowDetailedDiagnostic<CR>

" Show cursor detail key binding
"
" You can use :ClangdShowCursorDetail to show the details about current cursor.
"
" If you prefer to shortcut, here is an example:
"
au FileType c,cpp,objc,objcpp nnoremap <leader>c :ClangdShowCursorDetail<CR>

" Document Highlight key binding
"
" You can use :ClangdDocumentHighlight to search and highlight related pieces about current cursor in the same source file.
"
" If you prefer to shortcut, here is an example:
"
au FileType c,cpp,objc,objcpp nnoremap <leader>h :ClangdDocumentHighlight<CR>

" Fix-its key binding
"
" You can use :ClangdFixit to use Fix-its feature. It will find the possible fix solutions and prompt for your choice if any.
"
" If you prefer to shortcut, here is an example:
"
au FileType c,cpp,objc,objcpp nnoremap <buffer><Leader>f :ClangdFixit<CR>
au FileType c,cpp,objc,objcpp vnoremap <buffer><Leader>f :<C-u>ClangdFixit<CR>

" Specify python version
"
" vim-clangd will recognize your builtin python support of vim and will choose python3 as default.
"
" you might want to specify python version forcely
"
" let g:clangd#py_version = 2

" Use along with neocomplete
"
" make sure you have neocomplete installed. you should disable vim-clangd's autocompletion and configure neocomplete correctly. below is an example:
"
let g:clangd#completions_enabled = 0
if !exists('g:neocomplete#force_omni_input_patterns')
    let g:neocomplete#force_omni_input_patterns = {}
endif
let g:neocomplete#force_omni_input_patterns.c = '[^.[:digit:] *\t]\%(\.\|->\)\w*'
let g:neocomplete#force_omni_input_patterns.cpp = '[^.[:digit:] *\t]\%(\.\|->\)\w*\|\h\w*::\w*'
autocmd FileType c,cpp,objc,objcpp setlocal omnifunc=clangd#OmniCompleteAt



" Rust:
" vim-racer: "racer" source for Rust
" Plug 'racer-rust/vim-racer', {'for': 'rust'}
" Plug 'rust-lang/rust.vim', {'for': 'rust'}


if has('nvim')
    Plug 'roxma/nvim-cm-racer', {'for': 'rust', 'do': ':UpdateRemotePlugins' }
else
    Plug 'racer-rust/vim-racer', {'for': 'rust'}
endif


" Monte:
Plug 'monte-language/monte-vim', {'for': 'monte'}


" " alt
" Plug 'prabirshrestha/vim-lsp'
" Plug 'prabirshrestha/async.vim'
" Plug 'prabirshrestha/asyncomplete.vim'
" Plug 'prabirshrestha/asyncomplete-gocode.vim'
" Plug 'prabirshrestha/asyncomplete-racer.vim'
" Plug 'prabirshrestha/asyncomplete-tags.vim'
" Plug 'prabirshrestha/asyncomplete-omni.vim'
" Plug 'prabirshrestha/asyncomplete-file.vim'
" Plug 'prabirshrestha/asyncomplete-ultisnips.vim'
" Plug 'prabirshrestha/asyncomplete-lsp.vim'
"
" if executable('pyls')
"     " pip install python-language-server
"     au User lsp_setup call lsp#register_server({
"         \ 'name': 'pyls',
"         \ 'cmd': {server_info->['pyls']},
"         \ 'whitelist': ['python'],
"         \ })
" endif
"
"if executable('clangd')
"     au User lsp_setup call lsp#register_server({
"         \ 'name': 'clangd',
"         \ 'cmd': {server_info->['clangd']},
"         \ 'whitelist': ['c', 'cpp', 'objc', 'objcpp'],
"         \ })
" endif
"
" if executable('docker-langserver')
"     au User lsp_setup call lsp#register_server({
"         \ 'name': 'docker-langserver',
"         \ 'cmd': {server_info->[&shell, &shellcmdflag, 'docker-langserver --stdio']},
"         \ 'whitelist': ['dockerfile'],
"         \ })
" endif
"
" if executable('rls')
"     au User lsp_setup call lsp#register_server({
"         \ 'name': 'rls',
"         \ 'cmd': {server_info->['rustup', 'run', 'nightly', 'rls']},
"         \ 'whitelist': ['rust'],
"         \ })
" endif
"
" if executable('css-languageserver')
"     au User lsp_setup call lsp#register_server({
"         \ 'name': 'css-languageserver',
"         \ 'cmd': {server_info->[&shell, &shellcmdflag, 'css-languageserver --stdio']},
"         \ 'whitelist': ['css', 'less', 'sass'],
"         \ })
" endif
"
" if executable('go-langserver')
"     au User lsp_setup call lsp#register_server({
"         \ 'name': 'go-langserver',
"         \ 'cmd': {server_info->['go-langserver', '-mode', 'stdio']},
"         \ 'whitelist': ['go'],
"         \ })
" endif

Plug 'sirtaj/vim-openscad'

Plug 'vhdirk/vim-cmake', {'for': ['cmake']}

""
"" Comp
""

if has('nvim')
    " numerous
    if executable('make') && executable('cargo')
        Plug 'autozimu/LanguageClient-neovim',
                    \{ 'do': 'make build && ln -sfvr target/debug/languageclient bin/languageclient'
                    \, 'branch': 'next' }
    " else
    "     Plug 'autozimu/LanguageClient-neovim',
    "                 \{ 'do': ':UpdateRemotePlugins'
    "                 \, 'branch': 'master' }
    endif

    " Required for operations modifying multiple buffers like rename.
    set hidden

    let g:LanguageClient_serverCommands = {
        \ 'python': ['pyls'],
        \ 'rust': ['rustup', 'run', 'nightly', 'rls'],
        \ 'sh': ['bash-language-server', 'start'],
        \ 'css': ['css-languageserver', '--stdio'],
        \ 'glsl': ['glslls', '--stdin'],
        \ 'yaml': ['yamlls', '--stdio'],
        \ 'javascript': ['flow-language-server', '--stdio'],
        \ 'javascript.jsx': ['flow-language-server', '--stdio'],
        \ 'vue': ['vls']
        \ }

        " \ 'jsx': ['flow-language-server', '--stdio'],
        " \ 'javascript': ['nodels'],
        " \ 'javascript.jsx': ['nodels'],
        " \ 'javascript': ['javascript-typescript-stdio'],
        " \ 'javascript.jsx': ['javascript-typescript-stdio'],
        " \ 'javascript': ['tcp://127.0.0.1:2089'],

    " let g:LanguageClient_changeThrottle = 0.1
    " let g:LanguageClient_selectionUI = 'fzf'
    " let g:LanguageClient_selectionUI = 'location-list'

    let g:LanguageClient_rootMarkers = {
        \ 'python': ['setup.py', 'setup.cfg'],
        \ 'rust': ['Cargo.toml'],
        \ 'javascript': ['project.json', 'manifest.json', 'package.json'],
        \ 'cpp': ['CMakeLists.txt'],
        \ }

    " let g:LanguageClient_waitOutputTimeout = 20

    augroup LanguageClient_config
        autocmd!
        autocmd User LanguageClientStarted setlocal signcolumn=yes
        autocmd User LanguageClientStopped setlocal signcolumn=auto
    augroup END

    nnoremap <silent> K :call LanguageClient#textDocument_hover()<CR>
    nnoremap <silent> gd :call LanguageClient#textDocument_definition()<CR>
    nnoremap <silent> <F2> :call LanguageClient#textDocument_rename()<CR>

    Plug 'coddingtonbear/neomake-platformio', { 'do': ':UpdateRemotePlugins' }
    let g:localvimrc_sandbox = 0

    " vimshell: "vimshell" source for vimshell
    " Plug 'Shougo/vimshell.vim', {'for': 'vimshell'}

    " Plug 'roxma/nvim-completion-manager'
    Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }

    " neco-syntax: "syntax" source (This is now for N syntaxes)
    Plug 'Shougo/neco-syntax'

    " let g:deoplete#sources#go#auto_goos = 1
    let g:deoplete#sources#jedi#show_docstring = 1
    let g:deoplete#sources#use_cache = 1

    " vimshell: "vimshell" source for vimshell
    " Plug 'Shougo/vimshell.vim', {'for': 'vimshell'}

    " deoplete-jedi: "jedi" source for Python
    Plug 'zchee/deoplete-jedi', {'for': ['python', 'pyrex', 'cython']}

    " deoplete-docker
    " Plug 'zchee/deoplete-docker', {'for': 'dockerfile'}

    " Zsh completion
    Plug 'zchee/deoplete-zsh', {'for': ['zsh', 'sh']}

    " deoplete-go: "go" source for Go
    Plug 'zchee/deoplete-go', {'for': ['go', 'gotexttmpl', 'gohtmltmpl']}

    "" deoplete-ruby: "ruby" source for Ruby language
    "Plug 'fishbullet/deoplete-ruby', {'for': 'ruby'}

    " neco-syntax: "syntax" source (for more than just viml now)
    Plug 'Shougo/neco-syntax'

    " viml
    Plug 'Shougo/neco-vim', {'for': 'vim'}

    " deoplete-d: "d" source for D language
    "Plug 'landaire/deoplete-d', {'for': 'd'}

    " deoplete-github: "github" source for "gitcommit" filetype
    Plug 'SevereOverfl0w/deoplete-github', {'for': 'gitcommit'}

    " deoplete-clang: "clang" source for C/C++
    Plug 'zchee/deoplete-clang', {'for': ['c', 'cpp', 'objc', 'objcpp']}

    "" neco-ghc: "ghc" source for Haskell
    "Plug 'eagletmt/neco-ghc', {'for': 'haskell'}
"
    "" deoplete-ruby: "ruby" source for Ruby language
    "Plug 'fishbullet/deoplete-ruby', {'for': 'ruby'}

    "" deoplete-rtags: "rtags" source for "c", "cpp", "objc" and "objcpp" filetypes
    "Plug 'LuXuryPro/deoplete-rtags'

    "" elixir.nvim: "elixir" source for Elixir
    ""Plug 'awetzel/elixir.nvim', {'for': 'elixir'}
    "Plug 'slashmili/alchemist.vim', {'for': 'elixir'}

    " deoplete-ternjs: "ternjs" source for JavaScript
    Plug 'carlitux/deoplete-ternjs', {'for': ['javascript', 'json', 'javascript.jsx']}

    """ deoplete-flow: "flow" source for flowscript (statically typed JavaScript)
    " Plug 'steelsojka/deoplete-flow', {'for': 'flow'}

    """ deoplete-typescript: "typescript" source for typescript
    " Plug 'mhartington/deoplete-typescript', {'for': ['javascript', 'json', 'typescript']}
    " let g:deoplete#sources#tss#javascript_support = 1

    " Plug 'mhartington/nvim-typescript'  ", {'for': ['javascript', 'json', 'typescript']}
    " let g:nvim_typescript#javascript_support = 1  " 0
    " let g:nvim_typescript#vue_support = 1  " 0
    " let g:nvim_typescript#max_completion_detail = 50  " 25
    " let g:nvim_typescript#type_info_on_hold = 1  " 0
    " let g:nvim_typescript#signature_complete = 1  " 0
    " let g:nvim_typescript#default_mappings = 1

    "" Dart
    "Plug 'villainy/deoplete-dart', { 'for': 'dart' }

    """ perlomni.vim: "perlomni" source for Perl
    "Plug 'c9s/perlomni.vim', {'for': 'perl'}

    "" deoplete-swift: "swift" source for Swift
    "Plug 'landaire/deoplete-swift'

    "" async-clj-omni: "async_clj" source for Clojure
    "Plug 'SevereOverfl0w/async-clj-omni'

    "" neovim-intellij-complete-deoplete: "intellij" source for Intellij IDE
    "Plug 'vhakulinen/neovim-intellij-complete-deoplete'

    " webcomplete.vim: "webcomplete" source for browser opened pages
    " Plug 'thalesmello/webcomplete.vim'

    " if !empty($TMUX)
    "     " tmux-complete: "tmuxcomplete" source for tmux panes (deoplete)
    "     Plug 'wellle/tmux-complete.vim'
    " endif

    " rust
    " Plug 'roxma/nvim-cm-racer', {'for': 'rust', 'do': ':UpdateRemotePlugins' }

else
    Plug 'roxma/nvim-completion-manager', {'do': ':UpdateRemotePlugins'}
    let g:loaded_ncm = 1

    " (optional) javascript completion
    Plug 'roxma/nvim-cm-tern',  {'do': 'npm install'}

    " (optional) language server protocol framework
    " Plug 'autozimu/LanguageClient-neovim', { 'do': ':UpdateRemotePlugins' }
    Plug 'autozimu/LanguageClient-neovim', { 'do': ['make release', ':UpdateRemotePlugins'], 'branch': 'next' }

    "" rust
    "Plug 'roxma/nvim-cm-racer', {'for': 'rust', 'do': ':UpdateRemotePlugins' }

    " (optional) php completion via LanguageClient-neovim
    "Plug 'roxma/LanguageServer-php-neovim',  {'do': 'composer install && composer run-script parse-stubs'}
    "autocmd FileType php LanguageClientStart

"else
    "Plug 'Valodim/vim-zsh-completion'
    "Gautocmdft zsh,sh let b:completefunc=zsh_completion#Complete

    "function! BuildYCM(info)
    "    " info is a dictionary with 3 fields
    "    " - name:   name of the plugin
    "    " - status: 'installed', 'updated', or 'unchanged'
    "    " - force:  set on PlugInstall! or PlugUpdate!
    "    if a:info.status == 'installed' || a:info.force
    "        !./install.py --clang-completer --system-libclang --gocode-completer --racer-completer --system-boost --tern-completer
    "    endif
    "endfunction

    "Plug 'Valloric/YouCompleteMe', { 'do': function('BuildYCM'), 'on': 'YCM' }
endif

