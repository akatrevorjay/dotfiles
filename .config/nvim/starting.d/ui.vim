if exists('g:loaded_ginit')
    finish
endif
let g:loaded_ginit = 1

let s:font_family = 'PragmataProForPowerline Nerd Font'
let s:font_size = 10

if has('nvim')
    "if exists('GuiFont')
    "    execute 'GuiFont' fnameescape(printf('%s:h%d', s:font_family, s:font_size))
    "endif
else
    execute 'set' 'guifont='.fnameescape(printf('%s %d', s:font_family, s:font_size))
    execute 'set' 'guifontwide='.fnameescape(printf('%s %d', s:font_family, s:font_size))

    if has('gui_macvim')
        " YEAH BABY LIGATURE SUPPORT
        set macligatures
        set macthinstrokes
        set macmeta

        "set fullscreen
        "set transparency=10
    endif
endif


