" ----------------------------------------------------------------- "
" name			nordisk												"
" description	A colour scheme closely modelled on					"
"				Arctic Ice Studio’s Nord palette					"
"				https://github.com/arcticicestudio/nord				"
" author		kamil.stachowski@gmail.com							"
" version		0.5 (2016.12.06)									"
" license		GPLv3+												"
" ----------------------------------------------------------------- "

" - preamble ---------------------------------------------------------------------------------- <<< -

scriptencoding utf-8
let g:airline#themes#nordisk#palette = {}

" --------------------------------------------------------------------------------------------- >>> -
" - palette ----------------------------------------------------------------------------------- <<< -

let s:col00 = "#252a33"		" blackish 1
let s:col01 = "#38404d"		" blackish 2
let s:col02 = "#4a5466"		" blackish 3
let s:col03 = "#5e6b81"		" blackish 4
let s:col04 = "#6f7e98"		" blackish 5
let s:col05 = "#d7dbe2"		" whitish 1
let s:col06 = "#ffffff"		" whitish 2
let s:col07 = "#8fbcbb"		" light blue 1
let s:col08 = "#81a1c1"		" light blue 3
let s:col09 = "#88c0d0"		" light blue 2
let s:col10 = "#5e81ac"		" light blue 4
let s:col11 = "#a3be8c"		" green
let s:col12 = "#b48ead"		" purple
let s:col13 = "#eccf95"		" yellow
let s:col14 = "#d18a75"		" orange
let s:col15 = "#bf6971"		" red

" --------------------------------------------------------------------------------------------- >>> -
" - scheme ------------------------------------------------------------------------------------ <<< -

let g:airline#themes#nordisk#palette.inactive = airline#themes#generate_color_map
	\ ( [s:col00, s:col02, 0, 0],
	\	[s:col00, s:col03, 0, 0],
	\	[s:col00, s:col03, 0, 0] )
let g:airline#themes#nordisk#palette.inactive_modified =
	\ { 'airline_c': [ s:col00, s:col04, 0, 0, ''], }

let g:airline#themes#nordisk#palette.insert = airline#themes#generate_color_map
	\ ( [s:col06, s:col11, 0, 0],
	\	[s:col06, s:col05, 0, 0],
	\	[s:col00, s:col05, 0, 0] )
let g:airline#themes#nordisk#palette.insert_modified =
	\ { 'airline_c': [ s:col00, s:col06, 0, 0, ''], }
let g:airline#themes#nordisk#palette.insert_paste =
	\ { 'airline_a': [ s:col00, s:col07, 0, 0, ''], }

let g:airline#themes#nordisk#palette.normal = airline#themes#generate_color_map
	\ ( [s:col06, s:col10, 0, 0],
	\	[s:col06, s:col08, 0, 0],
	\	[s:col00, s:col08, 0, 0] )
let g:airline#themes#nordisk#palette.normal_modified =
	\ { 'airline_c': [ s:col00, s:col06, 0, 0, ''], }

let g:airline#themes#nordisk#palette.replace = airline#themes#generate_color_map
	\ ( [s:col06, s:col14, 0, 0],
	\	[s:col06, s:col05, 0, 0],
	\	[s:col00, s:col05, 0, 0] )
let g:airline#themes#nordisk#palette.replace_modified =
	\ { 'airline_c': [ s:col00, s:col06, 0, 0, ''], }
let g:airline#themes#nordisk#palette.replace_paste =
	\ { 'airline_a': [ s:col00, s:col07, 0, 0, ''], }

let g:airline#themes#nordisk#palette.visual = airline#themes#generate_color_map
	\ ( [s:col06, s:col12, 0, 0],
	\	[s:col06, s:col05, 0, 0],
	\	[s:col00, s:col05, 0, 0] )
let g:airline#themes#nordisk#palette.visual_modified =
	\ { 'airline_c': [ s:col00, s:col06, 0, 0, ''], }

let g:airline#themes#nordisk#palette.accents =
	\ { 'red': [ s:col14, '', 0, ''], }

" --------------------------------------------------------------------------------------------- >>> -

" vim: foldmarker=<<<,>>>
