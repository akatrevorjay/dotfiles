" one.vim by AlexMax
"
" A theme based on the One Dark theme for Atom.  Support for One Light might
" be coming soon.
"
" Supports 16-color terminals, 256-color xterms and GUI.  It's most likely
" broken on 88-color rxvt and non-recent versions of vim, patches welcome.

set background=dark
highlight clear
if exists("syntax_on")
	syntax reset
endif
let g:colors_name = "one"

" Color definitions.
let s:G_Mono1='#ABB2BF' " Default Text
let s:G_Mono2='#828997'
let s:G_Mono3='#5C6370'
let s:G_Hue1='#56B6C2'  " Cyan
let s:G_Hue2='#61AFEF'  " Blue
let s:G_Hue3='#C678DD'  " Purple
let s:G_Hue4='#98C379'  " Green
let s:G_Hue5='#E06C75'  " Red 1
let s:G_Hue52='#BE5046' " Red 2
let s:G_Hue6='#D19A66'  " Orange 1
let s:G_Hue62='#E5C07B' " Orange 2
let s:G_SyntaxFG=s:G_Mono1
let s:G_SyntaxBG='#282C34'
let s:G_SyntaxGutter='#636D83'
let s:G_SyntaxGuide='#3B3F48'
let s:G_SyntaxAccent='#528BFF'

if &t_Co == 256
	let s:T_Mono1='249'
	let s:T_Mono2='245'
	let s:T_Mono3='241'
	let s:T_Hue1='73'
	let s:T_Hue2='75'
	let s:T_Hue3='170'
	let s:T_Hue4='150'
	let s:T_Hue5='167'
	let s:T_Hue52='131'
	let s:T_Hue6='180'
	let s:T_Hue62='179'
	let s:T_SyntaxFG=s:T_Mono1
	let s:T_SyntaxBG='236'
	let s:T_SyntaxGutter='60'
	let s:T_SyntaxGuide='237'
	let s:T_SyntaxAccent='69'
else
	let s:T_Mono1='Gray'
	let s:T_Mono2='DarkGray'
	let s:T_Mono3='DarkGray'
	let s:T_Hue1='Cyan'
	let s:T_Hue2='Blue'
	let s:T_Hue3='Magenta'
	let s:T_Hue4='Green'
	let s:T_Hue5='Red'
	let s:T_Hue52='DarkRed'
	let s:T_Hue6='Yellow'
	let s:T_Hue62='DarkYellow'
	let s:T_SyntaxFG=s:T_Mono1
	let s:T_SyntaxBG='Black'
	let s:T_SyntaxGutter='DarkGray'
	let s:T_SyntaxGuide='DarkGray'
	let s:T_SyntaxAccent='DarkGray'
endif

" Base vim color scheme
exe 'hi Normal ctermfg='.s:T_SyntaxFG.' guifg='.s:G_SyntaxFG.' guibg='.s:G_SyntaxBG
exe 'hi LineNr ctermfg='.s:T_SyntaxGutter.' guifg='.s:G_SyntaxGutter
exe 'hi NonText ctermfg='.s:T_SyntaxGuide.' guifg='.s:G_SyntaxGuide

" Base vim syntax highlighting
exe 'hi Comment ctermfg='.s:T_Mono3.' gui=Italic guifg='.s:G_Mono3
exe 'hi link Character String'
exe 'hi Constant ctermfg='.s:T_Hue6.' guifg='.s:G_Hue6
exe 'hi link Delimiter Normal'
exe 'hi Identifier cterm=NONE ctermfg='.s:T_Hue5.' guifg='.s:G_Hue5
exe 'hi PreProc ctermfg='.s:T_Hue3.' guifg='.s:G_Hue3
exe 'hi Special ctermfg='.s:T_Hue1.' guifg='.s:G_Hue1
exe 'hi Statement gui=NONE ctermfg='.s:T_Hue3.' guifg='.s:G_Hue3
exe 'hi String ctermfg='.s:T_Hue4.' guifg='.s:G_Hue4
exe 'hi Type gui=NONE ctermfg='.s:T_Hue3.' guifg='.s:G_Hue3

" Mode-specific syntax highlighting
exe 'hi phpComparison ctermfg='.s:T_SyntaxFG.' guifg='.s:G_SyntaxFG
exe 'hi phpMemberSelector ctermfg='.s:T_SyntaxFG.' guifg='.s:G_SyntaxFG
exe 'hi phpOperator ctermfg='.s:T_SyntaxFG.' guifg='.s:G_SyntaxFG
exe 'hi phpFunctions ctermfg='.s:T_Hue1.' guifg='.s:G_Hue1
exe 'hi phpRelation ctermfg='.s:T_SyntaxFG.' guifg='.s:G_SyntaxFG
exe 'hi phpVarSelector ctermfg='.s:T_Hue5.' guifg='.s:G_Hue5
exe 'hi pythonBuiltin ctermfg='.s:T_Hue1.' guifg='.s:G_Hue1
exe 'hi pythonFunction ctermfg='.s:T_Hue2.' guifg='.s:G_Hue2
exe 'hi rubyAccess ctermfg='.s:T_Hue2.' guifg='.s:G_Hue2
exe 'hi rubyAttribute ctermfg='.s:T_Hue2.' guifg='.s:G_Hue2
exe 'hi rubyConstant ctermfg='.s:T_Hue6.' guifg='.s:G_Hue6
exe 'hi rubyFunction ctermfg='.s:T_Hue2.' guifg='.s:G_Hue2
exe 'hi rubyInterpolation ctermfg='.s:T_Hue4.' guifg='.s:G_Hue4
exe 'hi rubyInterpolationDelimiter ctermfg='.s:T_Hue52.' guifg='.s:G_Hue52
exe 'hi rubyLocalVariableOrMethod ctermfg='.s:T_Hue1.' guifg='.s:G_Hue1
exe 'hi rubyRegexp ctermfg='.s:T_Hue1.' guifg='.s:G_Hue1
exe 'hi rubyRegexpAnchor ctermfg='.s:T_Hue1.' guifg='.s:G_Hue1
exe 'hi rubyRegexpCharClass ctermfg='.s:T_Hue1.' guifg='.s:G_Hue1
exe 'hi rubyRegexpDelimiter ctermfg='.s:T_Hue1.' guifg='.s:G_Hue1
exe 'hi rubyRegexpQuantifier ctermfg='.s:T_Hue1.' guifg='.s:G_Hue1
exe 'hi rubyStringDelimiter ctermfg='.s:T_Hue4.' guifg='.s:G_Hue4
exe 'hi rubySymbol ctermfg='.s:T_Hue1.' guifg='.s:G_Hue1

" octol/vim-cpp-enhanced-highlight
exe 'hi cCustomFunc ctermfg='.s:T_Hue2.' guifg='.s:G_Hue2

" StanAngeloff/php.vim
exe 'hi phpClass ctermfg='.s:T_Hue62.' guifg='.s:G_Hue62
exe 'hi phpClassExtends ctermfg='.s:T_Hue4.' guifg='.s:G_Hue4
exe 'hi phpFunction ctermfg='.s:T_Hue2.' guifg='.s:G_Hue2
exe 'hi phpMethodsVar ctermfg='.s:T_Hue6.' guifg='.s:G_Hue6
exe 'hi phpParent ctermfg='.s:T_SyntaxFG.' guifg='.s:G_SyntaxFG
exe 'hi phpStaticClasses ctermfg='.s:T_Hue62.' guifg='.s:G_Hue62
