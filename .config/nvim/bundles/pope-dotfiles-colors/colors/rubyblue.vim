" local syntax file - set colors on a per-machine basis:
" vim: tw=0 ts=4 sw=4
" Vim color file
" Maintainer:	John Long <vim@johnwlong.com>
" Last Change:	2005 July
" Based on blue.vim by Steven Vertigan <steven@vertigan.wattle.id.au>.

set background=dark
hi clear
if exists("syntax_on")
  syntax reset
endif
let g:colors_name = "rubyblue"
hi Normal		guifg=#C7D4E2       guibg=#162433
hi Normal		ctermfg=lightGray   ctermbg=black
hi NonText		guifg=#4A6480       ctermfg=darkGray
hi comment		guifg=#428BDD       ctermfg=lightBlue
hi constant		guifg=#00CC00       ctermfg=lightGreen
hi identifier	guifg=white         ctermfg=white
hi statement	guifg=#F9BB00       gui=none               ctermfg=yellow
hi preproc		guifg=#F9BB00       ctermfg=yellow
hi type			guifg=white         ctermfg=white          gui=underline
hi special		guifg=#00CC00       ctermfg=lightGreen
hi Underlined	guifg=#208AFF       ctermfg=lightBlue
hi Underlined	gui=underline       cterm=underline

hi ErrorMsg		guifg=#F9BB00       guibg=darkBlue
hi ErrorMsg		ctermfg=black       ctermbg=red
hi WarningMsg	guifg=#428BDD       guibg=darkBlue         gui=bold
hi WarningMsg	ctermfg=cyan
hi ModeMsg		guifg=yellow        gui=NONE
hi ModeMsg		ctermfg=yellow
hi MoreMsg		guifg=yellow        gui=NONE
hi MoreMsg		ctermfg=yellow
hi Error		guifg=white         guibg=red              gui=underline
hi Error		ctermfg=white       ctermbg=red

hi Todo			guifg=black         guibg=yellow
hi Todo			ctermfg=black       ctermbg=yellow
hi Cursor		guifg=black         guibg=white
hi Cursor		ctermfg=black       ctermbg=white
hi Search		guifg=black         guibg=yellow
hi Search		ctermfg=black       ctermbg=yellow
hi IncSearch	guifg=black         guibg=yellow
hi IncSearch	ctermfg=black       ctermbg=yellow
hi LineNr		guifg=pink          ctermfg=lightMagenta
hi title		guifg=white         gui=bold              cterm=bold

hi StatusLineNC	gui=none            guifg=#213449         guibg=#208AFF
hi StatusLineNC	ctermfg=gray        ctermbg=darkBlue
hi StatusLine	gui=none            guifg=white           guibg=#208AFF
hi StatusLine	ctermfg=white        ctermbg=lightBlue

hi label		guifg=yellow        ctermfg=yellow
hi operator		guifg=yellow        gui=bold              ctermfg=yellow
hi clear Visual
hi Visual		term=reverse
hi Visual		ctermfg=black       ctermbg=yellow
hi Visual		guifg=black         guibg=#F9BB00

hi DiffChange	guibg=darkGreen		guifg=black
hi DiffChange	ctermbg=darkGreen	ctermfg=black
hi DiffText		guibg=olivedrab		guifg=black
hi DiffText		ctermbg=lightGreen	ctermfg=black
hi DiffAdd		guibg=slateblue		guifg=black
hi DiffAdd		ctermbg=blue		ctermfg=black
hi DiffDelete   guibg=coral			guifg=black
hi DiffDelete	ctermbg=cyan		ctermfg=black

hi Folded		guibg=orange		guifg=black
hi Folded		ctermbg=yellow		ctermfg=black
hi FoldColumn	guibg=gray30		guifg=black
hi FoldColumn	ctermbg=gray		ctermfg=black
hi cIf0			guifg=gray			ctermfg=gray
