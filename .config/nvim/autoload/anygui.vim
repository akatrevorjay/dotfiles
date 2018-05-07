if exists('g:loaded_anygui')
  finish
endif
let g:loaded_anygui = 1


function! anygui#setfont(...)
    if len(a:000) == 2
    	let g:font_family = a:1
    	let g:font_size = a:2 + 0
    else
	let g:font_size = 'PragmataProForPowerline Nerd Font'
	let g:font_size = 12
    endif

    if exists('GuiFont')
	execute 'GuiFont!' fnameescape(printf('%s:h%d', g:font_family, g:font_size))

    elseif exists('rpcnotify')
	" neovim-gtk
	call rpcnotify(1, 'Gui', 'Font', fnameescape(printf('%s:h%d', g:font_family, g:font_size)))

    endif
endfunction

command! -nargs=* AnyGuiSetFont call anygui#setfont('<args>')

