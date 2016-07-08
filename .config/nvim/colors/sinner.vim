set background=dark
hi clear

if exists("syntax_on")
  syntax reset
endif

let g:colors_name = "sinner"

let s:red =       9
let s:yellow =    11
let s:white =     15    " #ffffff
let s:offblue =   24    " #2f6775
let s:blue =      31    " #007da3
let s:green =     78    " #48d585
let s:normal =    145   " #b0b0b0
let s:pink =      161   " #d7235f

let s:charcoal =  233   " #082608
let s:darkgray1 = 234   " #1a1a1a
let s:darkgray2 = 235   " #262626

let s:gray1 =     236   " #333333
let s:gray2 =     238   " #424242
let s:gray3 =     239   " #4b4a49
let s:gray4 =     241   " #616161
let s:gray5 =     242   " #707070
let s:gray6 =     244   " #808080
let s:gray7 =     245   " #8f8f8f
let s:gray8 =     247   " #9e9e9e

let s:none = "NONE"
let s:fg =   "ctermfg="
let s:bg =   " ctermbg="

exe "hi Boolean "         .s:fg.s:pink      .s:bg.s:none
exe "hi ColorColumn "     .s:fg.s:none      .s:bg.s:darkgray1
exe "hi Comment "         .s:fg.s:offblue   .s:bg.s:none
exe "hi Conceal "         .s:fg.s:gray6     .s:bg.s:none
exe "hi Conditional "     .s:fg.s:gray3     .s:bg.s:none
exe "hi Constant "        .s:fg.s:gray6     .s:bg.s:none
exe "hi Cursor "          .s:fg.s:none      .s:bg.s:none        ." cterm=reverse"
exe "hi CursorColumn "    .s:fg.s:none      .s:bg.s:darkgray1
exe "hi CursorLine "      .s:fg.s:none      .s:bg.s:darkgray1   ." cterm=NONE term=NONE"
exe "hi CursorLineNr "    .s:fg.s:gray8     .s:bg.s:none
exe "hi DiffAdd "         .s:fg.s:none      .s:bg.s:charcoal
exe "hi DiffChange "      .s:fg.s:none      .s:bg.s:darkgray1
exe "hi DiffDelete "      .s:fg.s:none      .s:bg.s:charcoal
exe "hi DiffText "        .s:fg.s:none      .s:bg.s:gray1
exe "hi Directory "       .s:fg.s:gray7     .s:bg.s:none
exe "hi Error "           .s:fg.s:none      .s:bg.s:charcoal
exe "hi ErrorMsg "        .s:fg.s:none      .s:bg.s:charcoal
exe "hi FoldColumn "      .s:fg.s:gray4     .s:bg.s:none
exe "hi Folded "          .s:fg.s:gray5     .s:bg.s:none
exe "hi Function "        .s:fg.s:yellow    .s:bg.s:none
"   Ignore "
exe "hi IncSearch "       .s:fg.s:none      .s:bg.s:gray1
exe "hi Label "           .s:fg.s:offblue   .s:bg.s:none
exe "hi LineNr "          .s:fg.s:gray4     .s:bg.s:none
exe "hi MatchParen "      .s:fg.s:none      .s:bg.s:gray1
"   ModeMsg "
"   MoreMsg "
exe "hi NonText "         .s:fg.s:gray4     .s:bg.s:none
exe "hi Normal "          .s:fg.s:normal    .s:bg.s:charcoal
exe "hi Number "          .s:fg.s:pink      .s:bg.s:none
exe "hi Operator "        .s:fg.s:green     .s:bg.s:none
exe "hi OverLength "      .s:fg.s:red       .s:bg.s:none
exe "hi Pmenu "           .s:fg.s:none      .s:bg.s:darkgray1
exe "hi PmenuSbar "       .s:fg.s:none      .s:bg.s:darkgray2
exe "hi PmenuSel "        .s:fg.s:none      .s:bg.s:gray1
exe "hi PmenuThumb "      .s:fg.s:none      .s:bg.s:gray2
"   Question "
exe "hi Repeat "          .s:fg.s:yellow    .s:bg.s:none
exe "hi Search "          .s:fg.s:white     .s:bg.s:pink
exe "hi SignColumn "      .s:fg.s:gray4     .s:bg.s:none
exe "hi Special "         .s:fg.s:white     .s:bg.s:none
exe "hi SpecialKey "      .s:fg.s:gray4     .s:bg.s:none
exe "hi SpellBad "        .s:fg.s:none      .s:bg.s:charcoal
"   SpellCap "
exe "hi SpellLocal "      .s:fg.s:none      .s:bg.s:charcoal
exe "hi SpellRare "       .s:fg.s:none      .s:bg.s:darkgray2
exe "hi Statement "       .s:fg.s:gray3     .s:bg.s:none
exe "hi StatusLine "      .s:fg.s:gray8     .s:bg.s:darkgray2
exe "hi StatusLineNC "    .s:fg.s:gray5     .s:bg.s:darkgray2
exe "hi StorageClass "    .s:fg.s:green     .s:bg.s:none
exe "hi String "          .s:fg.s:blue      .s:bg.s:none
exe "hi TabLine "         .s:fg.s:gray5     .s:bg.s:darkgray2
exe "hi TabLineFill "     .s:fg.s:none      .s:bg.s:darkgray2
exe "hi TabLineSel "      .s:fg.s:white     .s:bg.s:offblue
exe "hi Title "           .s:fg.s:gray6     .s:bg.s:none
exe "hi Todo "            ."gui=standout"
exe "hi Type "            .s:fg.s:gray3     .s:bg.s:none
"   Underlined "
exe "hi VertSplit "       .s:fg.s:gray1     .s:bg.s:none
exe "hi Visual "          .s:fg.s:none      .s:bg.s:gray1
"   VisualNOS "
exe "hi WarningMsg "      .s:fg.s:none      .s:bg.s:charcoal
exe "hi WildMenu "        .s:fg.s:none      .s:bg.s:gray3
"   lCursor "
"   Identifier "
"   PreProc "
