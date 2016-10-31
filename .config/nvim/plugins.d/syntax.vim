
" GPG
Plug 'jamessan/vim-gnupg'

" Show CSS colors as what they truely are.
Plug 'ap/vim-css-color'

" Allows for python rst docstring support
Plug 'Rykka/riv.vim'

"" BATS test runner and syntax
Plug 'markcornick/vim-bats', {'for': ['sh', 'zsh', 'bats']}

" Better json
Plug 'elzr/vim-json', {'for': 'json'}
Plug 'google/vim-jsonnet'

" AWS CloudFormation
Plug 'm-kat/aws-vim'

" Go
Plug 'fatih/vim-go'  ", {'for': ['go', 'gotexttmpl', 'gohtmltmpl']}

"" Clang
"Plug 'Rip-Rip/clang_complete', {'for': ['c', 'cpp', 'objc', 'objcpp', 'h']}
"Plug 'osyo-manga/vim-marching'

"" Ruby
"Plug 'osyo-manga/vim-monster', {'for': 'rb'}

"" Javascript
"Plug 'moll/vim-node'  ", {'for': 'javascript'}
"Plug 'ternjs/tern_for_vim'  ", {'for': 'javascript'})
"Plug 'kchmck/vim-coffee-script'  ", {'for': ['coffee', 'coffeescript']}

" ZSH "official" vim syntax, definitely more up to date.
Plug 'chrisbra/vim-zsh', {'for': ['zsh', 'sh']}

" VimL color improvements
Plug 'trapd00r/vim-after-syntax-vim', {'for': 'vim'}
Plug 'tpope/vim-scriptease', {'for': 'vim'}

" Salt
Plug 'saltstack/salt-vim', { 'for': 'sls' }

" Jinja2
Plug 'Glench/Vim-Jinja2-Syntax'

" Ello poppet
Plug 'rodjek/vim-puppet', {'for': 'puppet'}

" TOML
Plug 'cespare/vim-toml', {'for': 'toml'}

" Tmux.conf syntax
Plug 'tmux-plugins/vim-tmux', {'for': 'tmux'}

" CSV
Plug 'chrisbra/csv.vim', {'for': 'csv'}

"" YAML: is it better syntax? What is this?
"Plug 'ingydotnet/yaml-vim'  ", {'for': 'yaml'}

" Webdev syntax/helpers
Plug 'mattn/emmet-vim'
"autocmd BufNewFile,BufRead *.md setf markdown

"" Markdown
"Plug 'plasticboy/vim-markdown', {'for': 'markdown'}

""Plug 'tpope/vim-markdown'

""
"" Language: Python
""

" Jedi:
Plug 'davidhalter/jedi-vim'

"" Indenting:
"Plug 'hynek/vim-python-pep8-indent', {'for': 'py'}
"Plug 'michaeljsmith/vim-indent-object', {'for': 'py'}

"" Folding:
"Plug 'tmhedberg/SimpylFold', {'for': 'py'}

" Testing:
Plug 'alfredodeza/pytest.vim', {'for': 'py'}

" Formatting: Better formatter (yapf > autopep8)
"
" The style used to format the buffer is checking the following in order:
" 1. b:yapf_format_style
" 2. Local '.yapf.style' for the file's project (or current directory for unsaved files)
" 3. g:yapf_format_style
" 4. pep8
"
Plug 'pignacio/vim-yapf-format', {'for': 'py'}
let g:yapf_format_style = 'google'
"let g:yapf_format_yapf_location = '/path/to/f'


""
"" Hashivim
""

" Vim plugins/syntax for hashicorp tooling
" Run Terraform files with tab compl
Plug 'hashivim/vim-terraform'  ", {'for': ['tf']}
Plug 'hashivim/vim-packer'
Plug 'hashivim/vim-consul'
Plug 'hashivim/vim-vagrant'
Plug 'hashivim/vim-vaultproject'
Plug 'hashivim/vim-nomadproject'
Plug 'hashivim/vim-ottoproject'


""
"" Comp
""

if has('nvim')
    " neco-syntax: "syntax" source
    Plug 'Shougo/neco-syntax'

    " vimshell: "vimshell" source for vimshell
    Plug 'Shougo/vimshell.vim'

    "" neco-ghc: "ghc" source for Haskell
    Plug 'eagletmt/neco-ghc', {'for': ['haskell']}

    "" vim-racer: "racer" source for Rust
    Plug 'racer-rust/vim-racer', {'for': ['rust']}

    " deoplete-go: "go" source for Go
    ", {'for': 'go'}
    Plug 'zchee/deoplete-go', {'for': ['go', 'gotexttmpl', 'gohtmltmpl']}

    "" elixir.nvim: "elixir" source for Elixir
    "Plug 'awetzel/elixir.nvim'

    " deoplete-jedi: "jedi" source for Python
    ", {'for': 'python'}
    Plug 'zchee/deoplete-jedi', {'for': ['python', 'cython']}

    "" perlomni.vim: "perlomni" source for Perl
    "Plug 'c9s/perlomni.vim'

    "" deoplete-typescript: "typescript" source for typescript
    "Plug 'mhartington/deoplete-typescript'

    " deoplete-clang: "clang" source for C/C++
    Plug 'zchee/deoplete-clang', {'for': ['c', 'cpp', 'objc', 'objcpp', 'h']}

    "" async-clj-omni: "async_clj" source for Clojure
    "Plug 'SevereOverfl0w/async-clj-omni'

    "" deoplete-ternjs: "ternjs" source for JavaScript
    "Plug 'carlitux/deoplete-ternjs'

    "" deoplete-swift: "swift" source for Swift
    "Plug 'landaire/deoplete-swift'

    "" neovim-intellij-complete-deoplete: "intellij" source for Intellij IDE
    "Plug 'vhakulinen/neovim-intellij-complete-deoplete'

    " deoplete-github: "github" source for "gitcommit" filetype
    Plug 'SevereOverfl0w/deoplete-github'

    "" deoplete-flow: "flow" source for JavaScript
    "Plug 'steelsojka/deoplete-flow'

    "" deoplete-d: "d" source for D language
    "Plug 'landaire/deoplete-d'

    "" deoplete-rtags: "rtags" source for "c", "cpp", "objc" and "objcpp" filetypes
    "Plug 'LuXuryPro/deoplete-rtags', {'for': ['c', 'cpp', 'objc', 'objcpp', 'h']}

    " deoplete-ruby: "ruby" source for Ruby language
    Plug 'fishbullet/deoplete-ruby', {'for': ['ruby', 'Gemfile', 'gem']}

    " Zsh completion
    Plug 'zchee/deoplete-zsh', {'for': ['zsh', 'sh', 'bats']}
else
    "Plug 'Valodim/vim-zsh-completion', {'for': ['zsh', 'sh']}
    "Gautocmdft zsh,sh let b:completefunc=zsh_completion#Complete
endif
