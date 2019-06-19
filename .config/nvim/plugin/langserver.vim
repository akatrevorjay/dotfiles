" if !exists('g:LanguageClient_loaded')
"   finish
" endif

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
    \ 'vue': ['vls'],
    \ 'ruby': ['solargraph', 'stdio'],
    \ }

    " \ 'go': ['gopls'],
    " \ 'go': ['go-langserver', '-format-tool', 'goimports', '-lint-tool', 'golint', '-maxparallelism', '8', '-gocodecompletion'],
    " \ 'jsx': ['flow-language-server', '--stdio'],
    " \ 'javascript': ['nodels'],
    " \ 'javascript.jsx': ['nodels'],
    " \ 'javascript': ['javascript-typescript-stdio'],
    " \ 'javascript.jsx': ['javascript-typescript-stdio'],
    " \ 'javascript': ['tcp://127.0.0.1:2089'],

" Run gofmt and goimports on save
autocmd BufWritePre *.go :call LanguageClient#textDocument_formatting_sync()

let g:LanguageClient_rootMarkers = {
    \ 'python': ['setup.py', 'setup.cfg'],
    \ 'rust': ['Cargo.toml'],
    \ 'javascript': ['project.json', 'manifest.json', 'package.json'],
    \ 'cpp': ['CMakeLists.txt'],
    \ }

" Automatically start language servers.
let g:LanguageClient_autoStart = 1

" let g:LanguageClient_changeThrottle = 0.1
" let g:LanguageClient_selectionUI = 'fzf'
" let g:LanguageClient_selectionUI = 'location-list'
" let g:LanguageClient_waitOutputTimeout = 20

let g:LanguageClient_settingsPath = expand('~/.config/nvim/lsp-settings.json')

augroup LanguageClient_config
    autocmd!
    autocmd User LanguageClientStarted setlocal signcolumn=yes
    autocmd User LanguageClientStopped setlocal signcolumn=auto
augroup END


call LanguageClient#textDocument_definition({'gotoCmd': 'split'})


function SetLSPShortcuts()
    nnoremap <silent> <leader>d :call LanguageClient_textDocument_hover()<CR>
    nnoremap <silent> <leader>g :call LanguageClient_textDocument_definition()<CR>
    nnoremap <silent> <leader>r :call LanguageClient_textDocument_rename()<CR>

    nnoremap <silent> K :call LanguageClient_textDocument_hover()<CR>
    nnoremap <silent> gd :call LanguageClient_textDocument_definition()<CR>
    nnoremap <silent> <F2> :call LanguageClient_textDocument_rename()<CR>

    " recommended settings
    nnoremap <leader>ld :call LanguageClient#textDocument_definition()<CR>
    nnoremap <leader>lr :call LanguageClient#textDocument_rename()<CR>
    nnoremap <leader>lf :call LanguageClient#textDocument_formatting()<CR>
    nnoremap <leader>lt :call LanguageClient#textDocument_typeDefinition()<CR>
    nnoremap <leader>lx :call LanguageClient#textDocument_references()<CR>
    nnoremap <leader>la :call LanguageClient_workspace_applyEdit()<CR>
    nnoremap <leader>lc :call LanguageClient#textDocument_completion()<CR>
    nnoremap <leader>lh :call LanguageClient#textDocument_hover()<CR>
    nnoremap <leader>ls :call LanguageClient_textDocument_documentSymbol()<CR>
    nnoremap <leader>lm :call LanguageClient_contextMenu()<CR>
endfunction()

" augroup LSP
"   autocmd!
"   autocmd FileType cpp,c call SetLSPShortcuts()
" augroup END
call SetLSPShortcuts()

