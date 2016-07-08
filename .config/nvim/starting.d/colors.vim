if has('nvim')
	" Truecolor in the term or the gui. NeoVim <3
	let $NVIM_TUI_ENABLE_TRUE_COLOR=1
	let $NVIM_TUI_ENABLE_CURSOR_SHAPE=1
else
	set t_Co=256
	if &compatible
		set nocompatible  " Be iMproved
	endif
endif
set background=dark
