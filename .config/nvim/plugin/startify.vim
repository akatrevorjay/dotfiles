
" if ! exists('g:loaded_startify')
" 	finish
" endif

" box chars
let g:startify_fortune_use_unicode = 1

" vim -S mysession.vim
" If Session.vim exists in curdir, load it baby.
let g:startify_session_autoload = 1

" Automatically update sessions in two cases:
let g:startify_session_persistence = 1

let g:startify_change_to_vcs_root = 1

"let g:startify_session_savevars = [
"        \ 'g:startify_session_savevars',
"        \ 'g:startify_session_savecmds',
"        \ 'g:random_plugin_use_feature'
"        \ ]

"let g:startify_custom_header =
"      \ map(split(system('fortune | cowsay'), '\n'), '"   ". v:val') + ['','']

let g:startify_relative_path = 1

"" Probs with ctrlp
"autocmd User Startified setlocal buftype=
"let g:ctrlp_reuse_window = 'startify'

"" Author's config
"autocmd User Startified setlocal cursorline

"let g:startify_enable_special         = 1
let g:startify_files_number           = 8
"let g:startify_relative_path          = 1
let g:startify_change_to_dir          = 1
"let g:startify_session_delete_buffers = 1

let g:startify_list_order = [
   \ ['   MRU within this dir:'],
   \ 'dir',
   \ ['   MRU'],
   \ 'files',
   \ ['   Sessions'],
   \ 'sessions',
   \ ['   Bookmarks'],
   \ 'bookmarks',
   \ ]

let g:startify_skiplist = [
           \ 'COMMIT_EDITMSG',
           \ 'plugger/.*/doc',
           \ ]

"let g:startify_custom_footer =
"        \ ['', "   Vim is charityware. Please read ':help uganda'.", '']

"hi StartifyBracket ctermfg=240
"hi StartifyFile    ctermfg=147
"hi StartifyFooter  ctermfg=240
hi StartifyHeader  ctermfg=114
"hi StartifyNumber  ctermfg=215
"hi StartifyPath    ctermfg=245
"hi StartifySlash   ctermfg=240
"hi StartifySpecial ctermfg=240

