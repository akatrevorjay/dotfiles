""
"" Colors:
""

"set termguicolors
set background=dark

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

let g:zenburn_unified_CursorColumn=1
let g:zenburn_force_dark_Background=1
let g:zenburn_high_Contrast=1
"colorscheme zenburn

let g:liquidcarbon_high_contrast = 1
"colorscheme liquidcarbon

"let g:hybrid_use_Xresources = 1
"colorscheme hybrid

"colorscheme herald_modified
"colorscheme luna

"colorscheme molokai"
"let g:rehash256 = 1  " Alt color scheme under dev that attempts to make molokai 256 as close as possible to dark gui

"colorscheme OceanicNext
"let g:airline_theme = 'oceanicnext'

"colorscheme PaperColor
"let g:airline_theme = 'papercolor'
"let g:PaperColor_Dark_Override = { 'background' : '#1c1c1c', 'cursorline' : '#abcdef', 'matchparen' : '#3a3a3a', 'comment' : '#5f875f' }
"let g:PaperColor_Light_Override = { 'background' : '#abcdef', 'cursorline' : '#dfdfff', 'matchparen' : '#d6d6d6' , 'comment' : '#8e908c' }

"colorscheme argonaut
"let g:airline_theme = 'kalisi'
""Gautocmd ColorScheme highlight Comment guibg=#323230 guifg=#9999aa
""Gautocmd ColorScheme highlight Comment guibg=#252525 guifg=#9999aa
"Gautocmd ColorScheme highlight Comment guibg=#253525 guifg=#00a6ff
"Gautocmd ColorScheme highlight Identifier guibg=#121255
"Gautocmd ColorScheme highlight String guibg=#331133

"let g:onedark_termcolors = 256
"let g:onedark_terminal_italics = 1
"colorscheme onedark

"let g:airline_theme = 'serene'

""
"" So Jelly: "I don't want to be pretty, I just want to be me, zuchini."
""

"let g:triplejelly_background_color = '000000'
"let g:triplejelly_background_color_256 = '000000'
"let g:triplejelly_foreground_color = 'C6CFD2'  " Default
let g:triplejelly_foreground_color = 'A7B7C7'
let g:triplejelly_background_color = '000000'

""Gautocmd highlight Comment guibg=#323230 guifg=#9999aa
""Gautocmd highlight Comment guibg=#252525 guifg=#9999aa
"Gautocmd highlight Comment guibg=#252525 guifg=#bbbbcc
"Gautocmd highlight Identifier guibg=#121255
"Gautocmd highlight String guibg=#331133

colorscheme termschool
let g:airline_theme = 'jellybeans'

" This actually messes up numerous schemes.
let g:colorschemer_auto = 0

"colorscheme sunburst

"colorscheme PaperColor
"let g:airline_theme = 'PaperColor'
"let g:PaperColor_Dark_Override = { 'background' : '#1c1c1c', 'cursorline' : '#abcdef', 'matchparen' : '#3a3a3a', 'comment' : '#5f875f' }
let g:PaperColor_Dark_Override = { 'background' : '#000000', 'cursorline' : '#abcdef', 'matchparen' : '#3a3a3a', 'comment' : '#5f875f' }
"let g:PaperColor_Light_Override = { 'background' : '#abcdef', 'cursorline' : '#dfdfff', 'matchparen' : '#d6d6d6' , 'comment' : '#8e908c' }

" UI (gui)
if has('gui_macvim')
	set transparency=10
endif

