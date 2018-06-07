" Yeeaaaah baby

let g:is_gui = 1

" grr
let g:loaded_ginit = 1

" font
" call anygui#setfont('PragmataProForPowerline Nerd Font', 12)
" call anygui#setfont('Fira Code', 12)

" nvim-gtk
if exists('g:GtkGuiLoaded')
    call rpcnotify(1, 'Gui', 'Font', 'FuraCode Nerd Font 12')
    call rpcnotify(1, 'Gui', 'Option', 'Cmdline', 1)
    let g:GuiInternalClipboard = 1
endif

