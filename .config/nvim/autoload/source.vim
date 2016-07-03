
if exists('g:loaded_source')
  finish
endif
let g:loaded_source = 1

function! source#local(...)
	for i in a:000
		execute 'runtime '.i.' local/'.i
	endfor
endfunction

function! source#any(...)
	for i in a:000
		call source#local(i, i.'.vim', i.'.d/*.vim')
	endfor
endfunction

command! -nargs=* Source call source#any('<args>')

