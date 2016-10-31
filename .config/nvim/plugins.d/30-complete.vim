if has('nvim')
    Plug 'Shougo/deoplete.nvim'
else
    "" Simple, no frills, vimscript-only tab completion
    "Plug 'ajh17/VimCompletesMe'
    "Gautocmdft python,vim,sh let b:vcm_tab_complete = "tags"

    "" GitHub completions
    "Plug 'rhysd/github-complete.vim', {'for': 'gitcommit'}
    "Gautocmdft gitcommit setl omnifunc=github_complete#complete
    "let g:github_complete_enable_neocomplete = 1
    "let g:github_complete_include_issue_title = 1

    "Plug 'Valloric/YouCompleteMe', { 'do': function('BuildYCM') }
    "function! BuildYCM(info)
    "    " info is a dictionary with 3 fields
    "    " - name:   name of the plugin
    "    " - status: 'installed', 'updated', or 'unchanged'
    "    " - force:  set on PlugInstall! or PlugUpdate!
    "    if a:info.status == 'installed' || a:info.force
    "        !./install.py
    "    endif
    "endfunction
endif

Plug 'Shougo/neopairs.vim'
Plug 'Shougo/echodoc.vim'
Plug 'Shougo/context_filetype.vim'

"" neosnippet: "neosnippet" source
"Plug 'Shougo/neosnippet.vim'
"Plug 'Shougo/neosnippet-snippets'

" neoinclude: "include" and "file/include" sources
Plug 'Shougo/neoinclude.vim'
