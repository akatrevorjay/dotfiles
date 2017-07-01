let g:airline#themes#sky#palette = {}

" Normal
let s:N1 = ['#e0e0e0', '#006064', '', '']
let s:N2 = [s:N1[0], '#003133', '', '']
let s:N3 = [s:N1[0], '#00191a', '', '']

" Insert
let s:I1 = [s:N1[0], '#8D6E63', '', '']
let s:I2 = [s:N1[0], s:N2[1], '', '']
let s:I3 = [s:N1[0], s:N3[1], '', '']

" Visual
let s:V1 = ['#FFFFFF', '#BCAAA4', '', '']
let s:V2 = [s:N1[0], s:N2[1], '', '']
let s:V3 = [s:N1[0], s:N3[1], '', '']

" Inactive
let s:IA1 = [s:N1[0], s:N2[1], '', '', '']
let s:IA2 = [s:N1[0], s:N3[1], '', '', '']
let s:IA3 = [s:N1[0], '#000000', '', '', '']

" Modified
let s:M = '#00BCD4'

let g:airline#themes#sky#palette.normal = airline#themes#generate_color_map(s:N1, s:N2, s:N3)
let g:airline#themes#sky#palette.normal_modified = {'airline_c': [s:M, '', '', '', '']}

let g:airline#themes#sky#palette.insert = airline#themes#generate_color_map(s:I1, s:I2, s:I3)
let g:airline#themes#sky#palette.insert_modified = g:airline#themes#sky#palette.normal_modified

let g:airline#themes#sky#palette.visual = airline#themes#generate_color_map(s:V1, s:V2, s:V3)
let g:airline#themes#sky#palette.visual_modified = g:airline#themes#sky#palette.normal_modified

let g:airline#themes#sky#palette.replace = g:airline#themes#sky#palette.insert
let g:airline#themes#sky#palette.replace_modified = g:airline#themes#sky#palette.normal_modified

let g:airline#themes#sky#palette.inactive = airline#themes#generate_color_map(s:IA1, s:IA2, s:IA3)
let g:airline#themes#sky#palette.inactive_modified = g:airline#themes#sky#palette.normal_modified

let g:airline#themes#sky#palette.accents = {'red': ['#f44034', '', '', '']}

