
set background=dark
highlight clear

if exists("syntax_on")
  syntax reset
endif

" let g:Powerline_colorscheme='lightBright'
" let g:Powerline_theme = 'customDefault'
let g:colors_name = "lightBright"
" call airline#load_theme('lightBright')

" Ocaml merlin
hi EnclosingExpr ctermbg=17 guibg=#2d362a

hi SignColumn ctermfg=231 ctermbg=232 cterm=NONE guifg=#d0d0c0 guibg=#20201e gui=NONE

hi ColorColumn ctermfg=NONE ctermbg=235 cterm=NONE guifg=NONE guibg=#252424 gui=NONE
hi IncSearch ctermfg=NONE ctermbg=59 cterm=NONE guifg=NONE guibg=#404857 gui=NONE
hi Directory ctermfg=175 ctermbg=NONE cterm=NONE guifg=#777774 guibg=NONE gui=NONE

"hi Boolean ctermfg=175 ctermbg=NONE cterm=NONE guifg=#cf95b4 guibg=NONE gui=NONE
hi Boolean ctermfg=175 ctermbg=NONE cterm=NONE guifg=#efa5c4 guibg=NONE gui=NONE
hi Character ctermfg=175 ctermbg=NONE cterm=NONE guifg=#ef95a4 guibg=NONE gui=NONE
hi Conditional ctermfg=179 ctermbg=NONE cterm=NONE guifg=#cec47f guibg=NONE gui=NONE
hi Constant ctermfg=175 ctermbg=NONE cterm=NONE guifg=#ef95a4 guibg=NONE gui=NONE
hi Define ctermfg=179 ctermbg=NONE cterm=NONE guifg=#cec47f guibg=NONE gui=NONE
hi ErrorMsg ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE
hi WarningMsg ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE
hi Float ctermfg=175 ctermbg=NONE cterm=NONE guifg=#ef95a4 guibg=NONE gui=NONE
hi Function ctermfg=173 ctermbg=NONE cterm=NONE guifg=#e59f7f guibg=NONE gui=NONE
hi Label ctermfg=173 ctermbg=NONE cterm=NONE guifg=#d9d9d9 guibg=NONE gui=NONE
hi Number ctermfg=175 ctermbg=NONE cterm=NONE guifg=#ef95a4 guibg=NONE gui=NONE
hi Operator ctermfg=179 ctermbg=NONE cterm=NONE guifg=#cec47f guibg=NONE gui=NONE
hi PreProc ctermfg=179 ctermbg=NONE cterm=NONE guifg=#cec47f guibg=NONE gui=NONE
hi Special ctermfg=231 ctermbg=NONE cterm=NONE guifg=#f8f8f8 guibg=NONE gui=NONE
hi Statement ctermfg=179 ctermbg=NONE cterm=NONE guifg=#cec47f guibg=NONE gui=NONE
hi StorageClass ctermfg=192 ctermbg=NONE cterm=NONE guifg=#d6ff8d guibg=NONE gui=NONE
hi String ctermfg=187 ctermbg=NONE cterm=NONE guifg=#d7df9d guibg=NONE gui=NONE
hi Tag ctermfg=173 ctermbg=NONE cterm=NONE guifg=#e59f7f guibg=NONE gui=NONE
hi Todo ctermfg=101 ctermbg=232 cterm=inverse,bold guifg=#877972 guibg=#0d0c0c gui=inverse,bold,italic
hi Type ctermfg=173 ctermbg=NONE cterm=NONE guifg=#e59f7f guibg=NONE gui=NONE
hi Underlined ctermfg=NONE ctermbg=NONE cterm=underline guifg=NONE guibg=NONE gui=underline
hi htmlTag ctermfg=137 ctermbg=NONE cterm=NONE guifg=#bcb89b guibg=NONE gui=NONE
hi htmlEndTag ctermfg=137 ctermbg=NONE cterm=NONE guifg=#bcb89b guibg=NONE gui=NONE
hi htmlTagName ctermfg=137 ctermbg=NONE cterm=NONE guifg=#bcb89b guibg=NONE gui=NONE
hi htmlArg ctermfg=137 ctermbg=NONE cterm=NONE guifg=#bcb89b guibg=NONE gui=NONE
hi htmlSpecialChar ctermfg=175 ctermbg=NONE cterm=NONE guifg=#cf95b4 guibg=NONE gui=NONE
hi javaScriptBraces ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE
hi yamlKey ctermfg=173 ctermbg=NONE cterm=NONE guifg=#e59f7f guibg=NONE gui=NONE
hi yamlAnchor ctermfg=147 ctermbg=NONE cterm=NONE guifg=#a8c3f0 guibg=NONE gui=NONE
hi yamlAlias ctermfg=147 ctermbg=NONE cterm=NONE guifg=#a8c3f0 guibg=NONE gui=NONE
hi yamlDocumentHeader ctermfg=187 ctermbg=NONE cterm=NONE guifg=#d7df9d guibg=NONE gui=NONE
hi cssURL ctermfg=147 ctermbg=NONE cterm=NONE guifg=#a8c3f0 guibg=NONE gui=NONE
hi cssFunctionName ctermfg=186 ctermbg=NONE cterm=NONE guifg=#dad085 guibg=NONE gui=NONE
hi cssColor ctermfg=175 ctermbg=NONE cterm=NONE guifg=#ef95a4 guibg=NONE gui=NONE
hi cssPseudoClassId ctermfg=173 ctermbg=NONE cterm=NONE guifg=#e59f7f guibg=NONE gui=NONE
hi cssClassName ctermfg=173 ctermbg=NONE cterm=NONE guifg=#e59f7f guibg=NONE gui=NONE
hi cssValueLength ctermfg=175 ctermbg=NONE cterm=NONE guifg=#ef95a4 guibg=NONE gui=NONE
hi cssCommonAttr ctermfg=188 ctermbg=NONE cterm=NONE guifg=#cec9c7 guibg=NONE gui=NONE
hi cssBraces ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE

hi jsDocTags guifg=#ab8870 guibg=NONE guisp=NONE gui=NONE ctermfg=228 ctermbg=NONE cterm=NONE
hi jsDocType guifg=#a5a597 guibg=NONE guisp=NONE gui=NONE ctermfg=228 ctermbg=NONE cterm=NONE
hi jsDocSeeTag guifg=#a5a597 guibg=NONE guisp=NONE gui=NONE ctermfg=228 ctermbg=NONE cterm=NONE
hi jsDocTypeNoParam guifg=#a5a597 guibg=NONE guisp=NONE gui=NONE ctermfg=228 ctermbg=NONE cterm=NONE
hi jsDocParam guifg=#858577 guibg=NONE guisp=NONE gui=BOLD ctermfg=228 ctermbg=NONE cterm=NONE


" Overrides from default color scheme above.
hi Normal ctermfg=231 ctermbg=232 cterm=NONE guifg=#d0d0c0 guibg=#20201e gui=NONE
hi javaScriptFunction ctermfg=192 ctermbg=NONE cterm=NONE guifg=#d6f38d guibg=NONE gui=NONE
hi Comment ctermfg=101 ctermbg=232 cterm=NONE guifg=#656557 guibg=#20201e gui=italic
"hi javaScriptBraces ctermfg=NONE ctermbg=NONE cterm=NONE guifg=#ecacad guibg=NONE gui=bold
hi Identifier ctermfg=192 ctermbg=NONE cterm=NONE guifg=#aabbd0 guibg=NONE gui=NONE
hi Keyword ctermfg=179 ctermbg=NONE cterm=NONE guifg=#ecac9d guibg=NONE gui=NONE


hi DiffAdd guibg=#2d362a ctermbg=16
hi DiffDelete guifg=#402420 ctermfg=16 guibg=#402420 ctermbg=16
hi DiffChange guibg=#222429 ctermbg=234
hi DiffText guibg=#283962 ctermbg=17 gui=none cterm=none
hi Cursor guifg=#222222 ctermfg=234 guibg=#ffbbff ctermbg=219 gui=none cterm=none
hi CursorLine guibg=#232321 ctermbg=234 gui=none cterm=none
hi CursorColumn guibg=#2d2d2d ctermbg=235
hi Search guifg=#20201e ctermfg=233 guibg=#ffffaa ctermbg=229
hi MatchParen guifg=#ecee90 ctermfg=228 guibg=#857b6f ctermbg=101 gui=bold cterm=bold
hi SpecialKey guifg=#6c6c6c ctermfg=241 guibg=#2d2d2d ctermbg=235 gui=none cterm=none
hi Visual guibg=#30302f ctermbg=235 gui=none cterm=none
hi LineNr guifg=#2f2f2d ctermfg=235 guibg=#222220 ctermbg=16 gui=none cterm=none
hi Folded guifg=#a0a8b0 ctermfg=145 guibg=#404048 ctermbg=237 gui=none cterm=none
hi Title guifg=#f6f3e8 ctermfg=230 gui=bold cterm=bold
hi VertSplit guifg=#222220 ctermfg=16 guibg=#222220 ctermbg=16 gui=none cterm=none
hi StatusLine guifg=#f6f3e8 ctermfg=230 guibg=#242422 ctermbg=234 gui=italic cterm=none
hi StatusLineNC guifg=#858580 ctermfg=102 guibg=#242422 ctermbg=234 gui=none cterm=none
hi WildMenu guifg=#1c1c1c ctermfg=233 guibg=#ffff99 ctermbg=228 gui=none cterm=none
hi WarningMsg guifg=#ff0000 ctermfg=196
hi TabLine guifg=#999999 ctermfg=246 guibg=#222220 ctermbg=16 gui=bold cterm=bold
hi TabLineFill guifg=#222220 ctermfg=16 ctermfg=231
hi TabLineSel gui=bold cterm=bold
hi Pmenu guifg=#8a9bb0 ctermfg=174 guibg=#282826 ctermbg=234
hi PmenuSel guifg=#282826 ctermfg=234 guibg=#8a9bb0 ctermbg=174 gui=bold cterm=bold
hi PmenuSbar guifg=#282826 ctermfg=234 guibg=#282826 ctermbg=234 gui=bold cterm=bold
hi PmenuThumb guifg=#585856 ctermfg=246 guibg=#585856 ctermbg=246 gui=bold cterm=bold
hi NonText guifg=#222220 ctermfg=16 guibg=#222220 ctermbg=16 gui=none cterm=none

hi! link VisualNOS	Visual
hi! link FoldColumn	Folded


let g:airline_theme='wombat'
set background=dark
call airline#load_theme()
