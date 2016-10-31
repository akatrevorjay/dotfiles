if exists('g:loaded_source')
  finish
endif
let g:loaded_source = 1

" Source a file as well as it's local equivalent
" > On second thought, this should just be a "bundle".
function! source#local(...)
    for i in a:000
        execute 'runtime! '.i.' '.'local/'.i
    endfor
endfunction

" Source filename.vim filename.d/*.vim as well as local equivalents
function! source#any(...)
    for i in a:000
        call source#local(i, i.'.vim', i.'.d/*.vim')
    endfor
endfunction

command! -nargs=* Source call source#any('<args>')

" Global event would be nice.
"autocmd! User goyo.vim echom 'Goyo is now loaded!'


" Source filename.vim filename.d/*.vim as well as local equivalents
function! source#on_plug(...)
    for i in a:000
        call source#any('on_plug_'.lc(i))
    endfor
endfunction

