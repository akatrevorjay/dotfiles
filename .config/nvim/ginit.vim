" Yeeaaaah baby

let g:is_gui = 1

" grr
let g:loaded_ginit = 1

" font
" call anygui#setfont('PragmataProForPowerline Nerd Font', 12)
" call anygui#setfont('Fira Code', 12)

" nvim-gtk
if exists('g:GtkGuiLoaded')
    " call rpcnotify(1, 'Gui', 'Font', 'FuraMono Nerd Font Regular 10')
    " call rpcnotify(1, 'Gui', 'Font', 'FuraMono Nerd Font 10')
    " call rpcnotify(1, 'Gui', 'Font', 'Anonymice Nerd Font 10')
    " call rpcnotify(1, 'Gui', 'Font', 'FuraMono Nerd Font Regular 10')
    " call rpcnotify(1, 'Gui', 'Font', 'Iosevka Type Regular 11')
    call rpcnotify(1, 'Gui', 'Font', 'Iosevka 11')
    call rpcnotify(1, 'Gui', 'FontFeatures', 'XV00, cv17, ss08, cv23, cv37, cv49, cv39, cv28, cv14')

    call rpcnotify(1, 'Gui', 'Option', 'Cmdline', 1)
    let g:GuiInternalClipboard = 1
    " exec ':NGTransparency .5 .5'
endif

