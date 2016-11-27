
" GPG
Plug 'jamessan/vim-gnupg'

" Show CSS colors as what they truely are.
Plug 'ap/vim-css-color'

" Allows for python rst docstring support
Plug 'Rykka/riv.vim'

"" BATS test runner and syntax
Plug 'markcornick/vim-bats'

" Better json
Plug 'elzr/vim-json'
Plug 'google/vim-jsonnet'

" AWS CloudFormation
Plug 'm-kat/aws-vim'

" Go
Plug 'fatih/vim-go'

"" Clang
"Plug 'Rip-Rip/clang_complete'
"Plug 'osyo-manga/vim-marching'

"" Ruby
"Plug 'osyo-manga/vim-monster'

"" Javascript
"Plug 'moll/vim-node'  "
"Plug 'ternjs/tern_for_vim'  "
"Plug 'kchmck/vim-coffee-script'  "

" ZSH "official" vim syntax, definitely more up to date.
Plug 'chrisbra/vim-zsh'

" VimL color improvements
Plug 'trapd00r/vim-after-syntax-vim'
Plug 'tpope/vim-scriptease'

" Salt
Plug 'saltstack/salt-vim'

" Jinja2
Plug 'Glench/Vim-Jinja2-Syntax'

" Ello poppet
Plug 'rodjek/vim-puppet'

" TOML
Plug 'cespare/vim-toml'

" Tmux.conf syntax
Plug 'tmux-plugins/vim-tmux'

" CSV
Plug 'chrisbra/csv.vim'

"" YAML: is it better syntax? What is this?
"Plug 'ingydotnet/yaml-vim'  "

" Webdev syntax/helpers
Plug 'mattn/emmet-vim'
"autocmd BufNewFile,BufRead *.md setf markdown

"" Markdown
"Plug 'plasticboy/vim-markdown'

""Plug 'tpope/vim-markdown'

""
"" Language: Python
""

" Jedi:
Plug 'davidhalter/jedi-vim'

"" Indenting:
"Plug 'hynek/vim-python-pep8-indent'
"Plug 'michaeljsmith/vim-indent-object'

"" Folding:
"Plug 'tmhedberg/SimpylFold'

" Testing:
Plug 'alfredodeza/pytest.vim'

" Formatting: Better formatter (yapf > autopep8)
"
" The style used to format the buffer is checking the following in order:
" 1. b:yapf_format_style
" 2. Local '.yapf.style' for the file's project (or current directory for unsaved files)
" 3. g:yapf_format_style
" 4. pep8
"
Plug 'pignacio/vim-yapf-format'
let g:yapf_format_style = 'google'
"let g:yapf_format_yapf_location = '/path/to/f'


""
"" Hashivim
""

" Vim plugins/syntax for hashicorp tooling
" Run Terraform files with tab compl
Plug 'hashivim/vim-terraform'  "
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
    " deoplete-jedi: "jedi" source for Python
    Plug 'zchee/deoplete-jedi'

    " Zsh completion
    Plug 'zchee/deoplete-zsh'

    " deoplete-go: "go" source for Go
    Plug 'zchee/deoplete-go'

    " deoplete-ruby: "ruby" source for Ruby language
    Plug 'fishbullet/deoplete-ruby'

    " neco-syntax: "syntax" source
    Plug 'Shougo/neco-syntax'

    "" vimshell: "vimshell" source for vimshell
    "Plug 'Shougo/vimshell.vim'

    "" neco-ghc: "ghc" source for Haskell
    Plug 'eagletmt/neco-ghc'

    "" vim-racer: "racer" source for Rust
    Plug 'racer-rust/vim-racer'

    " deoplete-github: "github" source for "gitcommit" filetype
    Plug 'SevereOverfl0w/deoplete-github'

    " deoplete-clang: "clang" source for C/C++
    Plug 'zchee/deoplete-clang'

    "" deoplete-d: "d" source for D language
    "Plug 'landaire/deoplete-d'

    "" deoplete-rtags: "rtags" source for "c", "cpp", "objc" and "objcpp" filetypes
    "Plug 'LuXuryPro/deoplete-rtags'

    "" elixir.nvim: "elixir" source for Elixir
    "Plug 'awetzel/elixir.nvim'

    " deoplete-ternjs: "ternjs" source for JavaScript
    Plug 'carlitux/deoplete-ternjs'

    "" deoplete-flow: "flow" source for JavaScript
    "Plug 'steelsojka/deoplete-flow'

    "" deoplete-typescript: "typescript" source for typescript
    "Plug 'mhartington/deoplete-typescript'

    "" perlomni.vim: "perlomni" source for Perl
    "Plug 'c9s/perlomni.vim'

    "" deoplete-swift: "swift" source for Swift
    "Plug 'landaire/deoplete-swift'

    "" async-clj-omni: "async_clj" source for Clojure
    "Plug 'SevereOverfl0w/async-clj-omni'

    "" neovim-intellij-complete-deoplete: "intellij" source for Intellij IDE
    "Plug 'vhakulinen/neovim-intellij-complete-deoplete'
else
    "Plug 'Valodim/vim-zsh-completion'
    "Gautocmdft zsh,sh let b:completefunc=zsh_completion#Complete
endif
