" UI Setup: Colors, fonts, mouse options

""
"" GUI
""

if has('gui_running') || has('nvim')
    set guioptions=acMh
    set mousefocus " focus follows mouse in gvim

    ""
    "" Font: GUI font selection is different per OS, this is highly annoying.
    "" TODO Function to set this that pays attention to OS, just give it a name and a size, done.
    ""

    if has('nvim')
        "if exists('neovim_dot_app')
        "    Guifont PragmataPro\ Nerd\ Font:h11
        "endif
    else
        set guifont=PragmataPro\ Nerd\ Font\ 12
        set guifontwide=&guifont

        if has('gui_macvim')
            " YEAH BABY LIGATURE SUPPORT
            set macligatures
            set macthinstrokes
            set macmeta

            "set fullscreen
            "set transparency=10
        endif
    endif
else
    " 256 color mode for term
    set t_Co=256

    " Shit color mode for shit term
    "set t_Co=88

    " Use CSApprox in normal vim to match gui colors approximately
    if exists('g:loaded_csapprox')
        let g:CSApprox_attr_map = { 'bold' : 'bold', 'italic' : 'underline', 'sp' : 'fg' }
    endif
endif


""
"" Colors:
""

" Always dark bg damnit, stop resetting it on me swan
set background=dark
"Gautocmd ColorScheme * set background=dark

""
"" ColorScheme:
""

" These look much nicer in gui mode. CSApprox definitely helps this out though.
" With NeoVIM, it's true color in your terminal, so gui colorschemes work just fine.
"if has('gui_running') || has('nvim')
"  colorscheme railscasts-trevorj
"  colorscheme neverland-darker
"else

"colorscheme elflord
"colorscheme navajo-night
"colorscheme camo
"colorscheme carvedwood
"colorscheme evening
"colorscheme fruity
"colorscheme guardian
"colorscheme industrial
"colorscheme ir_black
"colorscheme bensday
"colorscheme lucius
"colorscheme xoria256
"colorscheme jellybeans
"colorscheme leo
"colorscheme earendel
"colorscheme inkpot
"colorscheme wombat256
"colorscheme BusyBee
"colorscheme darkspectrum
"colorscheme darkeclipse
"colorscheme slate
"colorscheme hemisu
"colorscheme railscasts-trevorj
"colorscheme mustang

"colorscheme zenburn
let g:zenburn_unified_CursorColumn=1
let g:zenburn_force_dark_Background=1
let g:zenburn_high_Contrast=1

"colorscheme liquidcarbon
let g:liquidcarbon_high_contrast = 1

"colorscheme hybrid
let g:hybrid_use_Xresources = 1

"colorscheme herald_modified
"
"colorscheme luna

"colorscheme molokai"
"colorscheme molokai-nvim-trucolor
"let g:rehash256 = 1  " Alt color scheme under dev that attempts to make molokai 256 as close as possible to dark gui

"colorscheme OceanicNext
"let g:airline_theme = 'oceanicnext'

"colorscheme argonaut
"let g:airline_theme = 'kalisi'
""Gautocmd ColorScheme highlight Comment guibg=#323230 guifg=#9999aa
""Gautocmd ColorScheme highlight Comment guibg=#252525 guifg=#9999aa
"Gautocmd ColorScheme highlight Comment guibg=#253525 guifg=#00a6ff
"Gautocmd ColorScheme highlight Identifier guibg=#121255
"Gautocmd ColorScheme highlight String guibg=#331133

"colorscheme onedark
let g:onedark_termcolors = 256
let g:onedark_terminal_italics = 1

"let g:airline_theme = 'serene'

""
"" So Jelly: "I don't want to be pretty, I just want to be me, zuchini."
""

"let g:triplejelly_background_color = '000000'
"let g:triplejelly_background_color_256 = '000000'
"let g:triplejelly_foreground_color = 'C6CFD2'    " Default
let g:triplejelly_foreground_color = 'A7B7C7'
let g:triplejelly_background_color = '000000'

""Gautocmd ColorScheme highlight Comment guibg=#323230 guifg=#9999aa
""Gautocmd ColorScheme highlight Comment guibg=#252525 guifg=#9999aa
"Gautocmd ColorScheme highlight Comment guibg=#252525 guifg=#bbbbcc
"Gautocmd ColorScheme highlight Identifier guibg=#121255
"Gautocmd ColorScheme highlight String guibg=#331133

"colorscheme termschool
"let g:airline_theme = 'jellybeans'

"colorscheme hybrid
"colorscheme hybrid_material
"let g:airline_theme = 'hybrid'
"let g:airline_theme = 'raven'
"let g:airline_theme = 'serene'

" This actually messes up numerous schemes.
"let g:colorschemer_auto = 0

"colorscheme sunburst

"colorscheme PaperColor
"let g:airline_theme = 'PaperColor'
"let g:PaperColor_Dark_Override = { 'background' : '#1c1c1c', 'cursorline' : '#abcdef', 'matchparen' : '#3a3a3a', 'comment' : '#5f875f' }
let g:PaperColor_Dark_Override = { 'background' : '#000000', 'cursorline' : '#abcdef', 'matchparen' : '#3a3a3a', 'comment' : '#5f875f' }
"let g:PaperColor_Light_Override = { 'background' : '#abcdef', 'cursorline' : '#dfdfff', 'matchparen' : '#d6d6d6' , 'comment' : '#8e908c' }

"colorscheme hotpot
"colorscheme holokai
"colorscheme getafe
"colorscheme af
"colorscheme znake
"colorscheme flattr
"colorscheme hemisu
"colorscheme elda
"colorscheme crayon
"colorscheme colorsbox-stnight
"colorscheme colorsbox-stbright
"colorscheme codeblocks_dark
"colorscheme brookstream
"colorscheme Brogrammer
"colorscheme Tomorrow-Night-Bright

"if has('gui_running') || exists('neovim_dot_app')
"     colorscheme argonaut
"else
"     "colorscheme heroku-terminal
"     colorscheme harlequin
"endif

"colorscheme argonaut

let g:deepspace_italics = 1
let g:badwolf_css_props_highlight = 1
let g:badwolf_darkgutter = 1
let g:badwolf_tabline = 0
"colorscheme badwolf
"colorscheme base
"let g:airline_theme = 'deep_space'
"colorscheme hilal

"colorscheme codedark
"let g:airline_theme = 'badcat'
"colorscheme badcat2

"let ayucolor="dark"
"colorscheme ayu

"colorscheme magellan

let g:airline_theme = 'kolor'
let g:tmuxline_theme = 'airline_visual'
let g:moonflySpellReversed = 1
colorscheme moonfly

