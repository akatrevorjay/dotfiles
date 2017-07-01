" vim-airline companion theme of vorange
" this theme was shamelessly created by modifying
" the srcery airline theme.

" Palette

let s:bg       = ["#1C1B19", 234]
let s:bg2      = ["#2D2C29", 235]
let s:fg       = ["#FCE8C3", 223]
let s:muted    = ["#918175", 240] "131
let s:key1     = ['#D75F00', 166]
let s:key2     = ["#FBB829", 3]
let s:string   = ["#98BC37", 10]
let s:special  = ["#5573A3", 4]

let s:middle  = [s:muted[0], s:bg2[0], s:muted[1], s:bg2[1]]


" Normal mode
let s:N1 = [s:bg2[0], s:muted[0], s:bg2[1], s:muted[1]]
let s:N3 = [s:fg[0], s:bg2[0], s:fg[1], s:bg2[1]]

" Insert mode
let s:I1 = [s:bg2[0], s:key2[0], s:bg2[1], s:key2[1]]
let s:I3 = [s:key2[0], s:bg2[0], s:key2[1], s:bg2[1]]

" Visual mode
let s:V1 = [s:bg2[0], s:key1[0], s:bg2[1], s:key1[1]]
let s:V3 = [s:key1[0], s:bg2[0], s:key1[1], s:bg2[1]]

" Replace mode
let s:R1 = [s:bg2[0], s:special[0], s:bg2[1], s:special[1]]
let s:R3 = [s:special[0], s:bg2[0], s:special[1], s:bg2[1]]

" Inactive pane
let s:IA = [s:muted[0], s:bg[0], s:muted[1], s:bg[1]]

let g:airline#themes#vorange#palette = {}
let g:airline#themes#vorange#palette.accents = {
    \ 'red': [s:key1[0], '', s:key1[1], '', '']}

let g:airline#themes#vorange#palette.inactive = {
    \ 'airline_a': s:IA,
    \ 'airline_b': s:IA,
    \ 'airline_c': s:IA}

let g:airline#themes#vorange#palette.normal = airline#themes#generate_color_map(s:N1, s:middle, s:N3)
let g:airline#themes#vorange#palette.normal.airline_warning = [s:key2[0], s:bg2[0], s:key2[1], s:bg2[1], 'bold']
let g:airline#themes#vorange#palette.normal_modified = {
    \ 'airline_c': [s:key2[0], '', s:key2[1], '', ''],
    \ 'airline_x': [s:key2[0], '', s:key2[1], '', '']
    \ }
let g:airline#themes#vorange#palette.normal_modified.airline_warning = g:airline#themes#vorange#palette.normal.airline_warning

let g:airline#themes#vorange#palette.insert = airline#themes#generate_color_map(s:I1, s:middle, s:I3)
let g:airline#themes#vorange#palette.insert.airline_warning = g:airline#themes#vorange#palette.normal.airline_warning
let g:airline#themes#vorange#palette.insert_modified = {}
let g:airline#themes#vorange#palette.insert_modified.airline_warning = g:airline#themes#vorange#palette.normal.airline_warning

let g:airline#themes#vorange#palette.replace = airline#themes#generate_color_map(s:R1, s:middle, s:R3)
let g:airline#themes#vorange#palette.replace.airline_warning = g:airline#themes#vorange#palette.normal.airline_warning
let g:airline#themes#vorange#palette.replace_modified = {}
let g:airline#themes#vorange#palette.replace_modified.airline_warning = g:airline#themes#vorange#palette.normal.airline_warning

let g:airline#themes#vorange#palette.visual = airline#themes#generate_color_map(s:V1, s:middle, s:V3)
let g:airline#themes#vorange#palette.visual.airline_warning = g:airline#themes#vorange#palette.normal.airline_warning
let g:airline#themes#vorange#palette.visual_modified = {}
let g:airline#themes#vorange#palette.visual_modified.airline_warning = g:airline#themes#vorange#palette.normal.airline_warning
