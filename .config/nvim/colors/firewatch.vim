" Firewatch Color Scheme

set bg=dark
hi clear
if exists("syntax_on")
  syntax reset
endif

let g:colors_name = "firewatch"

" colors
let s:cyan      =  73
let s:blue      =  69
let s:red       = 174
let s:red_dark  = 168
let s:orange    = 166
let s:pink      = 181
let s:pink_dark = 131
let s:tan       = 180
let s:white     = 255
let s:gray      = 249
let s:gray_dark = 236

" colors: hex
let s:hex_cyan      = "#56b6c2"
let s:hex_blue      = "#528bff"
let s:hex_red       = "#d19a66"
let s:hex_red_dark  = "#e06c75"
let s:hex_orange    = "#dd672c"
let s:hex_pink      = "#c8ae9d"
let s:hex_pink_dark = "#be5046"
let s:hex_tan       = "#e5c07b"
let s:hex_white     = "#ebebff"
let s:hex_gray      = "#abb2bf"
let s:hex_gray_dark = "#282c34"

" aliases
exe "let s:bg_none      = ' guibg=NONE                  ctermbg=NONE'"
exe "let s:fg_cyan      = ' guifg=" .s:hex_cyan.      " ctermfg=" .s:cyan. "'"
exe "let s:fg_blue      = ' guifg=" .s:hex_blue.      " ctermfg=" .s:blue. "'"
exe "let s:fg_red       = ' guifg=" .s:hex_red.       " ctermfg=" .s:red. "'"
exe "let s:fg_red_dark  = ' guifg=" .s:hex_red_dark.  " ctermfg=" .s:red_dark. "'"
exe "let s:fg_orange    = ' guifg=" .s:hex_orange.    " ctermfg=" .s:orange. "'"
exe "let s:fg_pink      = ' guifg=" .s:hex_pink.      " ctermfg=" .s:pink. "'"
exe "let s:fg_pink_dark = ' guifg=" .s:hex_pink_dark. " ctermfg=" .s:pink_dark. "'"
exe "let s:fg_tan       = ' guifg=" .s:hex_tan.       " ctermfg=" .s:tan. "'"
exe "let s:fg_white     = ' guifg=" .s:hex_white.     " ctermfg=" .s:white. "'"
exe "let s:fg_gray      = ' guifg=" .s:hex_gray.      " ctermfg=" .s:gray. "'"
exe "let s:fg_gray_dark = ' guifg=" .s:hex_gray_dark. " ctermfg=" .s:gray_dark. "'"
exe "let s:bold         = ' cterm=BOLD'"
exe "let s:italic       = ' cterm=ITALIC'"
exe "let s:underline    = ' cterm=UNDERLINE'"

" definitions
exe "hi! Normal"       .s:bg_none .s:fg_gray
exe "hi! Comment"      .s:bg_none .s:fg_gray_dark
exe "hi! Constant"     .s:bg_none .s:fg_red
exe "hi! String"       .s:bg_none .s:fg_tan
exe "hi! Identifier"   .s:bg_none .s:fg_white
exe "hi! Function"     .s:bg_none .s:fg_cyan
exe "hi! Statement"    .s:bg_none .s:fg_orange
exe "hi! Operator"     .s:bg_none .s:fg_gray
exe "hi! PreProc"      .s:bg_none .s:fg_pink
exe "hi! PreCondit"    .s:bg_none .s:fg_pink_dark
exe "hi! Type"         .s:bg_none .s:fg_red
exe "hi! Special"      .s:bg_none .s:fg_blue

" editor
exe "hi! LineNr"       .s:fg_gray_dark

" html
exe "hi! htmlString"   .s:bg_none .s:fg_tan
exe "hi! htmlTag"      .s:bg_none .s:fg_white
exe "hi! htmlLink"     .s:bg_none .s:fg_gray
hi link htmlTagName     Type
hi link htmlArg         Constant
hi link htmlTitle       Normal
hi link htmlEndTag      htmlTag
hi link htmlH1          Normal
hi link htmlH2          htmlH1
hi link htmlH3          htmlH2
hi link htmlH4          htmlH3
hi link htmlH5          htmlH4
hi link htmlH6          htmlH5
hi link htmlSpecialChar Constant

" markdown: https://github.com/plasticboy/vim-markdown
exe "hi! mkdUrl"     .s:bg_none .s:fg_red .s:underline
exe "hi! mkdLink"    .s:bg_none .s:fg_tan
hi link mkdCode      Function
hi link mkdDelimiter Type

" javascript: https://github.com/pangloss/vim-javascript
hi link jsGlobalObjects htmlString
hi link jsPrototype     htmlString
hi link jsArgsObj       htmlString

" go: https://github.com/fatih/vim-go
hi link goDirective    Type
hi link goDeclaration  Type
hi link goDeclType     Type
hi link goType         Type
exe "hi! goStructDef"  .s:bg_none .s:fg_tan
hi link goConditional  StorageClass
hi link goInterface    Normal
hi link goDecimalInt   Type
hi link goFunction     Identifier
hi link goMethod       Function
hi link goField        Type
hi link goPointer      Type
hi link goString       htmlString

" vim
hi link vimFunction  Function
hi link vimCommand   Function
hi link vimString    htmlString
hi link vimVar       Type
hi link vimNumber    Normal
hi link vimHiGroup   Normal
hi link vimHLGroup   vimHiGroup
hi link vimGroup     vimHLGroup
hi link vimUserFunc  Function
hi link vimNotFunc   StorageClass
hi link vimIsCommand StorageClass
