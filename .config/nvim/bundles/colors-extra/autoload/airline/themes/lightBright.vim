" let s:file = [ '#ff0000' , '#242422' , 160 , 233 , '' ]
" let s:N1 = [ '#102000' , '#7f9f40' , 17  , 190 ]
" let s:N2 = [ '#aaaaaa' , '#444444' , 255 , 238 ]
" let s:N3 = [ '#777777' , '#282826' , 85  , 234 ]
" let g:airline#themes#lightBright#normal = airline#themes#generate_color_map(s:N1, s:N2, s:N3, s:file)
" " let g:airline#themes#lightBright#normal_modified = {
" "       \ 'info_separator': [ '#444444' , '#5f005f' , 238     , 53      , ''     ] ,
" "       \ 'statusline':     [ '#ffffff' , '#5f005f' , 255     , 53      , ''     ] ,
" "       \ }


" let s:I1 = [ '#003f8f' , '#dddddd' , 17  , 45  ]
" let s:I2 = [ '#ffffff' , '#70afef' , 255 , 27  ]
" let s:I3 = [ '#ffffff' , '#306faf' , 15  , 17  ]
" let g:airline#themes#lightBright#insert = airline#themes#generate_color_map(s:I1, s:I2, s:I3, s:file)
" " let g:airline#themes#lightBright#insert_modified = {
" "       \ 'info_separator': [ '#005fff' , '#5f005f' , 27      , 53      , ''     ] ,
" "       \ 'statusline':     [ '#ffffff' , '#5f005f' , 255     , 53      , ''     ] ,
" "       \ }
" let g:airline#themes#lightBright#insert_paste = {
"       \ 'mode':           [ s:I1[0]   , '#d78700' , s:I1[2] , 172     , ''     ] ,
"       \ 'mode_separator': [ '#d78700' , s:I2[1]   , 172     , s:I2[3] , ''     ] ,
"       \ }


" let g:airline#themes#lightBright#replace = copy(g:airline#themes#lightBright#insert)
" let g:airline#themes#lightBright#replace.mode           = [ s:I2[0]   , '#7f4333' , s:I2[2] , 124     , ''     ]
" let g:airline#themes#lightBright#replace.mode_separator = [ '#7f4333' , s:I2[1]   , 124     , s:I2[3] , ''     ]
" " let g:airline#themes#lightBright#replace_modified = g:airline#themes#lightBright#insert_modified


" let s:V1 = [ '#5f0f00' , '#ffaf00' , 232 , 214 ]
" let s:V2 = [ '#5f0f00' , '#ff5f00' , 232 , 202 ]
" let s:V3 = [ '#ffffff' , '#5f0000' , 15  , 52  ]
" let g:airline#themes#lightBright#visual = airline#themes#generate_color_map(s:V1, s:V2, s:N3, s:file)
" " let g:airline#themes#lightBright#visual_modified = {
" "       \ 'info_separator': [ '#ff5f00' , '#5f005f' , 202     , 53      , ''     ] ,
" "       \ 'statusline':     [ '#ffffff' , '#5f005f' , 255     , 53      , ''     ] ,
" "       \ }


" let s:IA = [ '#4e4e4e' , '#222220' , 239 , 234 , '' ]
" let g:airline#themes#lightBright#inactive = airline#themes#generate_color_map(s:IA, s:IA, s:IA, s:file)


