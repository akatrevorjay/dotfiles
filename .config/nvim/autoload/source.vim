
if exists('g:loaded_source')
  finish
endif
let g:loaded_source = 1

function! source#local(...)
	for i in a:000
		runtime! glob(i) glob('local/'.i)
	endfor
endfunction

function! source#any(...)
	for i in a:000
		call source#local(i.'.vim', i.'.d/*.vim')
	endfor
endfunction

function! source#begin()
	return
endfunction

command! -nargs=* Source call source#any('<args>')

