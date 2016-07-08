
Plug $GOPATH.'/src/github.com/junegunn/fzf'

" Python: Jedi
"Plug 'davidhalter/jedi-vim'

if has('nvim')
	Plug 'Shougo/deoplete.nvim'

	Plug 'Shougo/neopairs.vim'
	Plug 'Shougo/echodoc.vim'
	Plug 'Shougo/context_filetype.vim'
	Plug 'Shougo/neoinclude.vim'

	Plug 'Shougo/neco-vim'
	Plug 'Shougo/neco-syntax'

	"", {'for': 'go'}
	Plug 'zchee/deoplete-go'

	"", {'for': 'python'}
	Plug 'zchee/deoplete-jedi'
endif

"" Simple, no frills, vimscript-only tab completion
"Plug 'ajh17/VimCompletesMe'
"Gautocmdft python,vim,sh let b:vcm_tab_complete = "tags"

" Complete along all tmux panes
"Plug 'wellle/tmux-complete.vim'

" Zsh completion
Plug 'Valodim/vim-zsh-completion', {'for': ['zsh', 'sh']}
"Gautocmdft zsh,sh let b:completefunc=zsh_completion#Complete

"" GitHub completions
"Plug 'rhysd/github-complete.vim', {'for': 'gitcommit'}
"Gautocmdft gitcommit setl omnifunc=github_complete#complete
"let g:github_complete_enable_neocomplete = 1
"let g:github_complete_include_issue_title = 1

