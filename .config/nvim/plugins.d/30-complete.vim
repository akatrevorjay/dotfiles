
Plug $GOPATH.'/src/github.com/junegunn/fzf'

" Python: Jedi
Plug 'davidhalter/jedi-vim'

if has('nvim')
	Plug 'Shougo/deoplete.nvim'

	Plug 'Shougo/neopairs.vim'
	Plug 'Shougo/echodoc.vim'
	Plug 'Shougo/context_filetype.vim'

  " neco-vim: "vim" source for Vim script
  Plug 'Shougo/neco-vim'

  " neosnippet: "neosnippet" source
  Plug 'Shougo/neosnippet.vim'
  Plug 'Shougo/neosnippet-snippets'

  " neoinclude: "include" and "file/include" sources
  Plug 'Shougo/neoinclude.vim'

  " neco-syntax: "syntax" source
  Plug 'Shougo/neco-syntax'

  " vimshell: "vimshell" source for vimshell
  Plug 'Shougo/vimshell.vim'

  "" neco-ghc: "ghc" source for Haskell
  "Plug 'eagletmt/neco-ghc'

  "" vim-racer: "racer" source for Rust
  "Plug 'racer-rust/vim-racer'

  "" UltiSnips source: "ultisnips" source for UltiSnips
  "Plug 'SirVer/ultisnips'

  "" clang-complete: "clang_complete" source for C/C++/Objective-C
  "Plug 'Rip-Rip/clang_complete'

  " deoplete-go: "go" source for Go
	", {'for': 'go'}
  Plug 'zchee/deoplete-go'

  "" elixir.nvim: "elixir" source for Elixir
  "Plug 'awetzel/elixir.nvim'

  " deoplete-jedi: "jedi" source for Python
	", {'for': 'python'}
  Plug 'zchee/deoplete-jedi'

  "" perlomni.vim: "perlomni" source for Perl
  "Plug 'c9s/perlomni.vim'

  "" deoplete-typescript: "typescript" source for typescript
  "Plug 'mhartington/deoplete-typescript'

  " deoplete-clang: "clang" source for C/C++
  Plug 'zchee/deoplete-clang'

  "" async-clj-omni: "async_clj" source for Clojure
  "Plug 'SevereOverfl0w/async-clj-omni'

  "" deoplete-ternjs: "ternjs" source for JavaScript
  "Plug 'carlitux/deoplete-ternjs'

  "" deoplete-swift: "swift" source for Swift
  "Plug 'landaire/deoplete-swift'

  "" neovim-intellij-complete-deoplete: "intellij" source for Intellij IDE
  "Plug 'vhakulinen/neovim-intellij-complete-deoplete'

  if ! empty($TMUX)
    " tmux-complete: "tmuxcomplete" source for tmux panes
    Plug 'wellle/tmux-complete.vim'
  endif

  " deoplete-github: "github" source for "gitcommit" filetype
  Plug 'SevereOverfl0w/deoplete-github'

  "" deoplete-flow: "flow" source for JavaScript
  "Plug 'steelsojka/deoplete-flow'

  "" deoplete-d: "d" source for D language
  "Plug 'landaire/deoplete-d'

  "" deoplete-rtags: "rtags" source for "c", "cpp", "objc" and "objcpp" filetypes
  "Plug 'LuXuryPro/deoplete-rtags', {'for': ['c', 'cpp', 'objc', 'objcpp']}

  " deoplete-ruby: "ruby" source for Ruby language
  Plug 'fishbullet/deoplete-ruby'

  " Zsh completion
  Plug 'zchee/deoplete-zsh', {'for': ['zsh']}
endif

"" Ruby omni completion
"Plug 'osyo-manga/vim-monster'

"" Simple, no frills, vimscript-only tab completion
"Plug 'ajh17/VimCompletesMe'
"Gautocmdft python,vim,sh let b:vcm_tab_complete = "tags"

" Complete along all tmux panes
"Plug 'wellle/tmux-complete.vim'

" Zsh completion
"Plug 'Valodim/vim-zsh-completion', {'for': ['zsh', 'sh']}

"Gautocmdft zsh,sh let b:completefunc=zsh_completion#Complete

"" GitHub completions
"Plug 'rhysd/github-complete.vim', {'for': 'gitcommit'}
"Gautocmdft gitcommit setl omnifunc=github_complete#complete
"let g:github_complete_enable_neocomplete = 1
"let g:github_complete_include_issue_title = 1

