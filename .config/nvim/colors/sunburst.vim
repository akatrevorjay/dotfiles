" sunburst.vim by AlexMax
"
" A theme based on the Sunburst theme for Textmate.
"
" Supports 16-color terminals, 256-color xterms and GUI.  It's most likely
" broken on 88-color rxvt and non-recent versions of vim, patches welcome.
"
" Color names courtesy of http://chir.ag/projects/name-that-color

set background=dark
highlight clear
if exists("syntax_on")
	syntax reset
endif
let g:colors_name = "sunburst"

" Color definitions.
let s:G_Black="#000000"

let s:G_Alabaster='#F8F8F8'     " Foreground
let s:G_OuterSpace='#30363C'    " Invisibles
let s:G_CodGray='#0D0D0D'       " Line Highlight
let s:G_Shark='#2C3033'         " Selection
let s:G_SilverChalice='#AEAEAE' " Comment
let s:G_Mariner='#3387CC'       " Constant
let s:G_Malibu='#89BDFF'        " Entity
let s:G_Terracotta='#E28964'    " Keyword
let s:G_Conifer='#99CF50'       " Storage
let s:G_Apple='#65B042'         " String
let s:G_Mamba='#9B859D'         " Support
let s:G_RoyalBlue='#3E87E3'     " Variable
let s:G_Primrose='#DDF2A4'      " String Constant
let s:G_Porsche='#E9C062'       " String Regex
let s:G_Brandy='#DAD085'        " Support (Function)
let s:G_PigeonPost='#AFC4DB'    " Preprocessor Directive

if &t_Co == 256
	let s:T_Alabaster='231'
	let s:T_OuterSpace='237'
	let s:T_CodGray='232'
	let s:T_Shark='236'
	let s:T_SilverChalice='145'
	let s:T_Mariner='32'
	let s:T_Malibu='111'
	let s:T_Terracotta='173'
	let s:T_Conifer='149'
	let s:T_Apple='70'
	let s:T_Mamba='139'
	let s:T_RoyalBlue='33'
	let s:T_Primrose='193'
	let s:T_Porsche='179'
	let s:T_Brandy='186'
	let s:T_PigeonPost='153'
else
	let s:T_Alabaster='White'
	let s:T_OuterSpace='DarkGray'
	let s:T_CodGray='Black'
	let s:T_Shark='DarkCyan'
	let s:T_SilverChalice='Gray'
	let s:T_Mariner='Blue'
	let s:T_Malibu='Cyan'
	let s:T_Terracotta='Red'
	let s:T_Conifer='Green'
	let s:T_Apple='DarkGreen'
	let s:T_Mamba='Magenta'
	let s:T_RoyalBlue='Blue'
	let s:T_Primrose='Green'
	let s:T_Porsche='Yellow'
	let s:T_Brandy='Yellow'
	let s:T_PigeonPost='Blue'
endif

" Base vim color scheme
exe 'hi Normal ctermfg='.s:T_Alabaster.' guifg='.s:G_Alabaster.' guibg='.s:G_Black
exe 'hi ColorColumn guibg='.s:G_CodGray
exe 'hi Cursor guibg=#A7A7A7'
exe 'hi CursorLine guibg='.s:G_CodGray
hi clear MatchParen
exe 'hi MatchParen cterm=underline gui=underline'
hi clear Search
exe 'hi Search cterm=underline gui=underline'
exe 'hi Visual ctermbg='.s:T_Shark.' guibg='.s:G_Shark

" Base vim syntax highlighting
exe 'hi Comment ctermfg='.s:T_SilverChalice.' gui=Italic guifg='.s:G_SilverChalice
exe 'hi link Character String'
exe 'hi Constant ctermfg='.s:T_Mariner.' guifg='.s:G_Mariner
exe 'hi link Delimiter Normal'
exe 'hi Function ctermfg='.s:T_Malibu.' guifg='.s:G_Malibu
exe 'hi Identifier cterm=NONE ctermfg='.s:T_RoyalBlue.' guifg='.s:G_RoyalBlue
exe 'hi PreProc ctermfg='.s:T_PigeonPost.' guifg='.s:G_PigeonPost
exe 'hi String ctermfg='.s:T_Apple.' guifg='.s:G_Apple
exe 'hi Special ctermfg='.s:T_Primrose.' guifg='.s:G_Primrose
exe 'hi Statement gui=NONE ctermfg='.s:T_Terracotta.' guifg='.s:G_Terracotta
exe 'hi Type gui=NONE ctermfg='.s:T_Conifer.' guifg='.s:G_Conifer

" Mode-specific syntax highlighting
exe 'hi phpDefine ctermfg='.s:T_Conifer.' guifg='.s:G_Conifer
exe 'hi phpFunctions ctermfg='.s:T_Brandy.' guifg='.s:G_Brandy
exe 'hi phpVarSelector ctermfg='.s:T_RoyalBlue.' guifg='.s:G_RoyalBlue
exe 'hi pythonBuiltin ctermfg='.s:T_Brandy.' guifg='.s:G_Brandy
exe 'hi rubyClass ctermfg='.s:T_Terracotta.' guifg='.s:G_Terracotta
exe 'hi rubyDefine ctermfg='.s:T_Terracotta.' guifg='.s:G_Terracotta
exe 'hi rubyInclude ctermfg='.s:T_Terracotta.' guifg='.s:G_Terracotta
exe 'hi rubyInterpolation ctermfg='.s:T_Primrose.' guifg='.s:G_Primrose
exe 'hi rubyInterpolationDelimiter ctermfg='.s:T_Primrose.' guifg='.s:G_Primrose
exe 'hi rubyRegexp ctermfg='.s:T_Porsche.' guifg='.s:G_Porsche
exe 'hi rubyRegexpAnchor ctermfg='.s:T_Porsche.' guifg='.s:G_Porsche
exe 'hi rubyRegexpCharClass ctermfg='.s:T_Porsche.' guifg='.s:G_Porsche
exe 'hi rubyRegexpDelimiter ctermfg='.s:T_Porsche.' guifg='.s:G_Porsche
exe 'hi rubyRegexpQuantifier ctermfg='.s:T_Porsche.' guifg='.s:G_Porsche
exe 'hi rubyStringDelimiter ctermfg='.s:T_Apple.' guifg='.s:G_Apple

" octol/vim-cpp-enhanced-highlight
exe 'hi cAnsiFunction ctermfg='.s:T_Brandy.' guifg='.s:G_Brandy

" StanAngeloff/php.vim
exe 'hi phpClass ctermfg='.s:T_Malibu.' guifg='.s:G_Malibu
exe 'hi phpFunction ctermfg='.s:T_Malibu.' guifg='.s:G_Malibu
exe 'hi phpParent ctermfg='.s:T_Alabaster.' guifg='.s:G_Alabaster
