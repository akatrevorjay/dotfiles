" Yeeaaaah baby

let g:is_gui = 1

" grr
let g:loaded_ginit = 1

let s:font_family = 'PragmataProForPowerline Nerd Font'
let s:font_size = 10

if exists('GuiFont')
    execute 'GuiFont!' fnameescape(printf('%s:h%d', s:font_family, s:font_size))
endif
