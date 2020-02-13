" if !exists('g:LanguageClient_loaded')
"   finish
" endif

" Required for operations modifying multiple buffers like rename.
set hidden

let g:LanguageClient_serverCommands = {
    \ 'rust': ['rustup', 'run', 'nightly', 'rls'],
    \ 'sh': ['bash-language-server', 'start'],
    \ 'css': ['css-languageserver', '--stdio'],
    \ 'glsl': ['glslls', '--stdin'],
    \ 'yaml': ['yamlls', '--stdio'],
    \ 'javascript': ['flow-language-server', '--stdio'],
    \ 'javascript.jsx': ['flow-language-server', '--stdio'],
    \ 'vue': ['vls'],
    \ 'ruby': ['solargraph', 'stdio'],
    \ 'python': ['pyls'],
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
    \ 'python': ['setup.py', 'setup.cfg', 'pyproject.toml', 'requirements.txt'],
    \ 'rust': ['Cargo.toml'],
    \ 'javascript': ['project.json', 'manifest.json', 'package.json', 'yarn.lock'],
    \ 'cpp': ['CMakeLists.txt'],
    \ }

" Automatically start language servers.
let g:LanguageClient_autoStart = 1

let g:LanguageClient_changeThrottle = 0.5
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


function SetLSPShortcuts()
    nnoremap <buffer> <silent> <leader>d :call LanguageClient_textDocument_hover()<CR>
    nnoremap <buffer> <silent> <leader>g :call LanguageClient#textDocument_definition({'gotoCmd': 'split'})<CR>
    nnoremap <buffer> <silent> <leader>r :call LanguageClient_textDocument_rename()<CR>

    nnoremap <buffer> <silent> K :call LanguageClient_textDocument_hover()<CR>
    nnoremap <buffer> <silent> gd :call LanguageClient#textDocument_definition({'gotoCmd': 'split'})<CR>
    nnoremap <buffer> <silent> <F2> :call LanguageClient_textDocument_rename()<CR>

    " recommended settings
    nnoremap <buffer> <leader>ld :call LanguageClient#textDocument_definition({'gotoCmd': 'split'})<CR>
    nnoremap <buffer> <leader>lr :call LanguageClient#textDocument_rename()<CR>
    nnoremap <buffer> <leader>lf :call LanguageClient#textDocument_formatting()<CR>
    nnoremap <buffer> <leader>lt :call LanguageClient#textDocument_typeDefinition()<CR>
    nnoremap <buffer> <leader>lx :call LanguageClient#textDocument_references()<CR>
    nnoremap <buffer> <leader>la :call LanguageClient_workspace_applyEdit()<CR>
    nnoremap <buffer> <leader>lc :call LanguageClient#textDocument_completion()<CR>
    nnoremap <buffer> <leader>lh :call LanguageClient#textDocument_hover()<CR>
    nnoremap <buffer> <leader>ls :call LanguageClient_textDocument_documentSymbol()<CR>
    nnoremap <buffer> <leader>lm :call LanguageClient_contextMenu()<CR>
endfunction

function LC_maps()
    call SetLSPShortcuts()

    setlocal formatexpr=LanguageClient#textDocument_rangeFormatting_sync()
endfunction

autocmd FileType * call LC_maps()

" augroup LSP
"   autocmd!
"   autocmd FileType cpp,c call SetLSPShortcuts()
" augroup END

