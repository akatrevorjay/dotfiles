" -----------------------------------------------------------------------------
" Vim color file
" Maintainer:   Kai Wolf <mail@kai-wolf.me>
" Last Change:  2016 August
" License:      Beer Ware
" -----------------------------------------------------------------------------

" Reset Highlighting
hi clear
if exists("syntax_on")
  syntax reset
endif

" General settings
set background=dark
let g:colors_name="newproggie"

" Editor settings
hi Normal        cterm=none      ctermbg=0  ctermfg=7  gui=none   guibg=#1E1E1E  guifg=#B0B0B0
hi CursorLine    cterm=bold      ctermbg=0  ctermfg=15 gui=bold   guibg=#1E1E1E  guifg=#F7F7F7
hi Cursor        cterm=none      ctermbg=1  ctermfg=0  gui=none   guibg=#A94744  guifg=#1E1E1E
hi LineNr        cterm=none      ctermbg=0  ctermfg=7  gui=none   guibg=#1E1E1E  guifg=#B0B0B0
hi CursorLineNR  cterm=none      ctermbg=1  ctermfg=0  gui=none   guibg=#A94744  guifg=#1E1E1E

" Number column
hi CursorColumn  cterm=none      ctermbg=1  ctermfg=0  gui=none   guibg=#A94744  guifg=#1E1E1E
hi FoldColumn    cterm=none      ctermbg=0  ctermfg=2  gui=none   guibg=#1E1E1E  guifg=#608B4E
hi Folded        cterm=none      ctermbg=0  ctermfg=2  gui=none   guibg=#1E1E1E  guifg=#608B4E

" Window / Tab delimiters
hi TabLine       cterm=none      ctermbg=0  ctermfg=3  gui=none   guibg=#1E1E1E  guifg=#D69831
hi TabLineFill   cterm=none      ctermbg=0  ctermfg=3  gui=none   guibg=#1E1E1E  guifg=#D69831
hi TabLineSel    cterm=none      ctermbg=0  ctermfg=3  gui=none   guibg=#1E1E1E  guifg=#D69831
hi OverLength    cterm=none      ctermbg=0  ctermfg=1  gui=none   guibg=#1E1E1E  guifg=#A94744

" File navigation / Searching
hi Directory     cterm=none      ctermbg=0  ctermfg=4  gui=none   guibg=#1E1E1E  guifg=#569CD6
hi Search        cterm=none      ctermbg=6  ctermfg=15 gui=none   guibg=#218693  guifg=#F7F7F7
hi IncSearch     cterm=none      ctermbg=3  ctermfg=8  gui=none   guibg=#D69831  guifg=#3C3C3C

" Prompt / Status
hi StatusLine    cterm=none      ctermbg=8  ctermfg=15 gui=none   guibg=#3C3C3C  guifg=#F7F7F7
hi StatusLineNC  cterm=none      ctermbg=15 ctermfg=8  gui=none   guibg=#F7F7F7  guifg=#3C3C3C
hi Title         cterm=none      ctermbg=0  ctermfg=4  gui=none   guibg=#1E1E1E  guifg=#569CD6
hi ModeMsg       cterm=bold      ctermbg=0  ctermfg=10 gui=bold   guibg=#1E1E1E  guifg=#8FBF7F

" Visual aid
hi MatchParen    cterm=bold      ctermbg=0  ctermfg=15 gui=none   guibg=#1E1E1E  guifg=#F7F7F7
hi Visual        cterm=none      ctermbg=8  ctermfg=15 gui=none   guibg=#3C3C3C  guifg=#F7F7F7
hi NonText       cterm=none      ctermbg=0  ctermfg=0  gui=none   guibg=#1E1E1E  guifg=#1E1E1E
hi Error         cterm=none      ctermbg=1  ctermfg=7  gui=bold   guibg=#1E1E1E  guifg=#A94744
hi ErrorMsg      cterm=none      ctermbg=1  ctermfg=7  gui=bold   guibg=#1E1E1E  guifg=#A94744
hi Todo          cterm=none      ctermbg=1  ctermfg=3  gui=bold   guibg=#1E1E1E  guifg=#D69831
hi Repeat        cterm=bold      ctermbg=0  ctermfg=1  gui=bold   guibg=#1E1E1E  guifg=#A94744

" Completion menu
hi Pmenu         cterm=none      ctermbg=8  ctermfg=7  gui=none   guibg=#3C3C3C  guifg=#B0B0B0
hi PmenuSel      cterm=none      ctermbg=4  ctermfg=15 gui=none   guibg=#569CD6  guifg=#F7F7F7
hi PmenuSbar     cterm=none      ctermbg=4  ctermfg=15 gui=none   guibg=#569CD6  guifg=#F7F7F7

" Spelling
hi SpellBad      cterm=underline ctermbg=0  ctermfg=9  gui=none   guibg=#1E1E1E  guifg=#E09690
hi SpellCap      cterm=underline ctermbg=0  ctermfg=9  gui=none   guibg=#1E1E1E  guifg=#E09690
hi SpellRare     cterm=underline ctermbg=0  ctermfg=9  gui=none   guibg=#1E1E1E  guifg=#E09690
hi SpellLocal    cterm=underline ctermbg=0  ctermfg=9  gui=none   guibg=#1E1E1E  guifg=#E09690

" Diff
hi DiffAdd       cterm=none      ctermbg=2  ctermfg=10 gui=none   guibg=#608B4E  guifg=#B5F2A1
hi DiffChange    cterm=none      ctermbg=4  ctermfg=12 gui=none   guibg=#569CD6  guifg=#CEEDFE
hi DiffDelete    cterm=none      ctermbg=1  ctermfg=9  gui=none   guibg=#A94744  guifg=#FFBDB8
hi DiffText      cterm=none      ctermbg=3  ctermfg=11 gui=none   guibg=#D69831  guifg=#FFD887

" General language constructs
hi Statement     cterm=none      ctermbg=0  ctermfg=4  gui=none   guibg=#1E1E1E  guifg=#569CD6
hi Keyword       cterm=none      ctermbg=0  ctermfg=4  gui=none   guibg=#1E1E1E  guifg=#569CD6
hi Comment       cterm=none      ctermbg=0  ctermfg=2  gui=italic guibg=#1E1E1E  guifg=#608B4E
hi Special       cterm=none      ctermbg=0  ctermfg=4  gui=none   guibg=#1E1E1E  guifg=#569CD6
hi Delimiter     cterm=none      ctermbg=0  ctermfg=4  gui=none   guibg=#1E1E1E  guifg=#569CD6

" C syntax highlighting
hi PreProc       cterm=none     ctermbg=0  ctermfg=5   gui=none   guibg=#1E1E1E  guifg=#B06386
hi Include       cterm=none     ctermbg=0  ctermfg=5   gui=none   guibg=#1E1E1E  guifg=#B06386
hi Define        cterm=none     ctermbg=0  ctermfg=5   gui=none   guibg=#1E1E1E  guifg=#B06386
hi Macro         cterm=none     ctermbg=0  ctermfg=5   gui=none   guibg=#1E1E1E  guifg=#B06386
hi PreCondit     cterm=none     ctermbg=0  ctermfg=5   gui=none   guibg=#1E1E1E  guifg=#B06386
hi Type          cterm=none     ctermbg=0  ctermfg=4   gui=none   guibg=#1E1E1E  guifg=#569CD6
hi String        cterm=none     ctermbg=0  ctermfg=3   gui=none   guibg=#1E1E1E  guifg=#D69831
hi Method        cterm=none     ctermbg=0  ctermfg=11  gui=none   guibg=#1E1E1E  guifg=#F8BC41
hi Function      cterm=none     ctermbg=0  ctermfg=11  gui=none   guibg=#1E1E1E  guifg=#F8BC41
hi Symbol        cterm=none     ctermbg=0  ctermfg=4   gui=none   guibg=#1E1E1E  guifg=#569CD6
hi Structure     cterm=none     ctermbg=0  ctermfg=4   gui=none   guibg=#1E1E1E  guifg=#569CD6
hi StorageClass  cterm=none     ctermbg=0  ctermfg=4   gui=none   guibg=#1E1E1E  guifg=#569CD6
hi Typedef       cterm=none     ctermbg=0  ctermfg=4   gui=none   guibg=#1E1E1E  guifg=#569CD6
hi Identifier    cterm=none     ctermbg=0  ctermfg=4   gui=none   guibg=#1E1E1E  guifg=#569CD6
hi Constant      cterm=none     ctermbg=0  ctermfg=4   gui=none   guibg=#1E1E1E  guifg=#569CD6
hi Number        cterm=none     ctermbg=0  ctermfg=2   gui=none   guibg=#1E1E1E  guifg=#608B4E

