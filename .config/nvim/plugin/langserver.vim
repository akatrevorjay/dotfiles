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
    \ 'vue': ['vls']
    \ }

    " \ 'go': ['go-langserver', '-format-tool', 'goimports', '-lint-tool', 'golint', '-maxparallelism', '8', '-gocodecompletion'],
    " \ 'jsx': ['flow-language-server', '--stdio'],
    " \ 'javascript': ['nodels'],
    " \ 'javascript.jsx': ['nodels'],
    " \ 'javascript': ['javascript-typescript-stdio'],
    " \ 'javascript.jsx': ['javascript-typescript-stdio'],
    " \ 'javascript': ['tcp://127.0.0.1:2089'],

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

nnoremap <silent> <leader>d :call LanguageClient_textDocument_hover()<CR>
nnoremap <silent> <leader>g :call LanguageClient_textDocument_definition()<CR>
nnoremap <silent> <leader>r :call LanguageClient_textDocument_rename()<CR>

nnoremap <silent> K :call LanguageClient_textDocument_hover()<CR>
nnoremap <silent> gd :call LanguageClient_textDocument_definition()<CR>
nnoremap <silent> <F2> :call LanguageClient_textDocument_rename()<CR>

