" Required for operations modifying multiple buffers like rename.
set hidden

let g:LanguageClient_serverCommands = {
    \ 'rust': ['rustup', 'run', 'nightly', 'rls'],
    \ 'javascript': ['/opt/javascript-typescript-langserver/lib/language-server-stdio.js'],
    \ 'python': ['pyls'],
    \ }
    " \ 'go': ['go-langserver', '-format-tool', 'goimports', '-lint-tool', 'golint', '-maxparallelism', '8', '-gocodecompletion'],

" Automatically start language servers.
let g:LanguageClient_autoStart = 1

nnoremap <silent> <leader>d :call LanguageClient_textDocument_hover()<CR>
nnoremap <silent> <leader>g :call LanguageClient_textDocument_definition()<CR>
nnoremap <silent> <leader>r :call LanguageClient_textDocument_rename()<CR>

nnoremap <silent> K :call LanguageClient_textDocument_hover()<CR>
nnoremap <silent> gd :call LanguageClient_textDocument_definition()<CR>
nnoremap <silent> <F2> :call LanguageClient_textDocument_rename()<CR>
