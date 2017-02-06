
" ColorScheme based on sublime text molokai and text-mate
" I just fork this theme to enable some custom settings
" Author @CaioCutrim @email:kaiocoutrim@gmail.com

hi clear

let g:colors_name="black-coffee-molokai"
" enabled italic fonts :)
let &t_ZH="\e[3m"
let &t_ZR="\e[23m"


hi Statement       guifg=#F92672               gui=bold
hi StatusLine      guifg=#455354 guibg=fg
hi StatusLineNC    guifg=#808080 guibg=#080808
hi StorageClass    guifg=#FD971F               gui=italic
hi Structure       guifg=#66D9EF
hi Tag             guifg=#F92672               gui=italic
hi Title           guifg=#ef5939
hi Todo            guifg=#FFFFFF guibg=bg      gui=bold

hi Typedef         guifg=#66D9EF
hi Type            guifg=#66D9EF               gui=none
hi Underlined      guifg=#808080               gui=underline

hi VertSplit       guifg=#808080 guibg=#080808 gui=bold
hi VisualNOS                     guibg=#403D3D
hi Visual                        guibg=#403D3D
hi WarningMsg      guifg=#FFFFFF guibg=#333333 gui=bold
hi WildMenu        guifg=#66D9EF guibg=#000000

hi TabLineFill     guifg=#1B1D1E guibg=#1B1D1E
hi TabLine         guibg=#1B1D1E guifg=#808080 gui=none

" Support for 256-color terminal
if &t_Co > 255
  hi Normal       ctermfg=249 ctermbg=232
  hi NonText      ctermfg=232 ctermbg=232
  hi CursorLine               ctermbg=232
  hi CursorLineNr   ctermfg=232         cterm=bold,italic
  hi Boolean        ctermfg=135
  hi Character       ctermfg=144
  hi Number          ctermfg=087
  hi String          ctermfg=144
  hi Conditional     ctermfg=161               cterm=bold
  hi Constant        ctermfg=135               cterm=bold
  hi Cursor          ctermfg=234 ctermbg=253
  hi Debug           ctermfg=225               cterm=bold
  hi Define          ctermfg=161  cterm=italic
  hi Delimiter       ctermfg=241

  hi DiffAdd                     ctermbg=24
  hi DiffChange      ctermfg=181 ctermbg=239
  hi DiffDelete      ctermfg=162 ctermbg=53
  hi DiffText                    ctermbg=102 cterm=bold

  hi Directory       ctermfg=118               cterm=bold
  hi Error           ctermfg=255   ctermbg=196 cterm=bold
  hi ErrorMsg        ctermfg=255   ctermbg=196 cterm=bold
  hi Exception       ctermfg=118               cterm=bold
  hi Float           ctermfg=135
  hi FoldColumn      ctermfg=67    ctermbg=16
  hi Folded          ctermfg=67    ctermbg=16
  hi Function        ctermfg=086
  hi Identifier      ctermfg=048               cterm=italic,bold
  hi Ignore          ctermfg=244   ctermbg=234
  hi IncSearch       ctermfg=193   ctermbg=16

  hi keyword         ctermfg=200               cterm=italic
  hi Label           ctermfg=093               cterm=none
  hi Macro           ctermfg=193
  hi SpecialKey      ctermfg=161 cterm=italic,bold

  hi MatchParen      ctermfg=233  ctermbg=208 cterm=bold
  hi ModeMsg         ctermfg=229
  hi MoreMsg         ctermfg=229
  hi Operator        ctermfg=81 cterm=bold

  " complete menu
  hi Pmenu           ctermfg=81  ctermbg=16
  hi PmenuSel        ctermfg=255 ctermbg=242
  hi PmenuSbar                   ctermbg=234
  hi PmenuThumb      ctermfg=81

  hi PreCondit       ctermfg=118               cterm=bold
  hi PreProc         ctermfg=118
  hi Question        ctermfg=81
  hi Repeat          ctermfg=161               cterm=bold,italic
  hi Search          ctermfg=255   ctermbg=233   cterm=italic

  " marks column
  hi SignColumn      ctermfg=118 ctermbg=235
  hi SpecialChar     ctermfg=161               cterm=bold
  hi SpecialComment  ctermfg=245               cterm=italic,bold
  hi Special         ctermfg=81 cterm=italic
  if has("spell")
    hi SpellBad                ctermbg=52
    hi SpellCap                ctermbg=17
    hi SpellLocal              ctermbg=17
    hi SpellRare  ctermfg=none ctermbg=none  cterm=reverse
  endif
  hi Statement       ctermfg=161               cterm=italic,bold
  hi StatusLine      ctermfg=238   ctermbg=253
  hi StatusLineNC    ctermfg=244   ctermbg=234
  hi StorageClass    ctermfg=163   cterm=italic
  hi Structure       ctermfg=161    cterm=italic
  hi Tag             ctermfg=161
  hi Title           ctermfg=166
  hi Todo            ctermfg=231 ctermbg=234   cterm=bold

  hi Typedef         ctermfg=161                cterm=italic,bold
  hi Type            ctermfg=81                cterm=italic
  hi Underlined      ctermfg=244               cterm=underline

  hi VertSplit       ctermfg=244 ctermbg=234   cterm=bold
  hi VisualNOS                   ctermbg=238
  hi Visual                      ctermbg=235
  hi WarningMsg      ctermfg=231 ctermbg=238   cterm=bold
  hi WildMenu        ctermfg=81  ctermbg=16
  hi Comment         ctermfg=59  cterm=italic
  hi CursorColumn                ctermbg=236
  hi ColorColumn                 ctermbg=236
  hi LineNr          ctermfg=250 ctermbg=236
  hi SpecialKey      ctermfg=59

  if exists("g:rehash256") && g:rehash256 == 1
    hi Normal       ctermfg=252 ctermbg=232
    hi CursorLine               ctermbg=236   cterm=none
    hi CursorLineNr ctermfg=208               cterm=none

    hi Boolean         ctermfg=141
    hi Character       ctermfg=222
    hi Number          ctermfg=141
    hi String          ctermfg=222
    hi Conditional     ctermfg=197               cterm=bold
    hi Constant        ctermfg=141               cterm=bold

    hi DiffDelete      ctermfg=125 ctermbg=233

    hi Directory       ctermfg=154               cterm=bold
    hi Error           ctermfg=222 ctermbg=233
    hi Exception       ctermfg=154               cterm=italic,bold
    hi Float           ctermfg=141
    hi Function        ctermfg=154
    hi Identifier      ctermfg=208

    hi Keyword         ctermfg=161               cterm=italic
    hi Operator        ctermfg=197
    hi PreCondit       ctermfg=154               cterm=bold
    hi PreProc         ctermfg=154
    hi Repeat          ctermfg=197               cterm=bold

    hi Statement       ctermfg=197               cterm=bold
    hi Tag             ctermfg=197
    hi Title           ctermfg=203
    hi Visual                      ctermbg=238

    hi Comment         ctermfg=244
    hi LineNr          ctermfg=239 ctermbg=235
    hi NonText         ctermfg=232 ctermbg=232
    hi SpecialKey      ctermfg=239
  endif
endif

" Must be at the end, because of ctermbg=234 bug. :(
" https://groups.google.com/forum/#!msg/vim_dev/afPqwAFNdrU/nqh6tOM87QUJ
set background=dark

