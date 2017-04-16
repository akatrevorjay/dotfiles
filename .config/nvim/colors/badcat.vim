" Vim colorscheme file.
"
" Repository: https://github.com/idlua/badcat
" Author:     Luan Vicente <hi[at]idlua.me>


" PREAMBLE
" BASIC SETTINGS-------------------------------------------------------------{{{
if exists('syntax_on')
   syntax reset
endif

highlight clear
set t_Co=256
set background=dark

let g:colors_name = 'badcat'
" }}}
" HIGHLIGHTING FUNCTION ------------------------------------------------------{{{
if has('gui_running')
    let s:hi_args = ['guifg', 'guibg', 'gui', 'guisp']
else
    let s:hi_args = ['ctermfg', 'ctermbg', 'cterm']
endif

function! s:HL(group, ...)
    let command = 'hi ' . a:group

    for i in range(0, len(a:000) - 1)
        let command .= ' ' . s:hi_args[i] . '=' . a:000[i]
    endfor

    execute command
endfunc
" }}}
" COLOR PALETTE ------------------------------------------------------------{{{
if has('gui_running')
  let s:darkgray  = '#121212'
  let s:lightgray = '#6c6c6c'
  let s:gray      = '#262626'
  let s:black     = '#080808'
  let s:white     = '#e4e4e4'
  let s:red       = '#ff5f5f'
  let s:green     = '#afd787'
  let s:purple    = '#875faf'
  let s:yellow    = '#ffffaf'
  let s:blue      = '#5fafd7'
  let s:orange    = '#ffaf5f'
  let s:pink      = '#ff87df'
elseif &t_Co == 256
  let s:darkgray  = '233'
  let s:lightgray = '242'
  let s:gray      = '235'
  let s:white     = '254'
  let s:black     = '232'
  let s:red       = '203'
  let s:green     = '150'
  let s:purple    = '097'
  let s:yellow    = '229'
  let s:blue      = '074'
  let s:orange    = '215'
  let s:pink      = '212'
endif
" }}}


" SETTINGS BASIC COLORS
" GENERAL/UI ----------------------------------------------------------------{{{
call s:HL('LineNr'       , s:gray)
call s:HL('CursorLineNr' , s:lightgray)
call s:HL('NonText'      , s:gray)                               " '~' , '@' and etc
call s:HL('CursorLine'   , 'NONE'       , s:black      , 'NONE') " CURSROR HIGHLIGHT
call s:HL('ColorColumn'  , 'NONE'       , s:gray)                " RULE BAR
call s:HL('VertSplit'    , s:darkgray   , s:gray)                " VERTICAL SPLIT DIVISOR
call s:HL('Folded'       , s:lightgray  , 'NONE')
call s:HL('StatusLine'   , s:black      , s:green)
call s:HL('StatusLineNC' , s:darkgray   , s:lightgray)
call s:HL('TabLineFill'  , 'NONE'       , s:black      , 'NONE')
call s:HL('TabLineSel'   , s:black      , s:green      , 'NONE')
call s:HL('TabLine'      , s:white      , s:gray       , 'NONE')
call s:HL('MatchParen'   , s:green      , 'NONE')
call s:HL('Visual'       , s:lightgray  , s:gray)                " VISUAL MODE
call s:HL('Search'       , s:pink       , s:black)
" }}}
" BASE SYNTAX ---------------------------------------------------------------{{{
call s:HL('Normal'    , s:white      , s:darkgray)
call s:HL('Comment'   , s:lightgray)
call s:HL('String'    , s:yellow)
call s:HL('Boolean'   , s:pink)
call s:HL('Delimiter' , s:purple)
" }}}


" SPECIFIC LANGUAGE SYNTAX
" VANILLA VIM ---------------------------------------------------------------{{{
call s:HL('vimCommentTitle' , s:green)
call s:HL('vimCommand'      , s:red)
call s:HL('vimFunction'     , s:blue)
call s:HL('vimFuncName'     , s:blue)
call s:HL('vimFuncVar'      , s:blue)
call s:HL('vimUserFunc'     , s:purple)
call s:HL('vimVar'          , s:blue)
call s:HL('vimOper'         , s:red)
call s:HL('vimNumber'       , s:yellow)
call s:HL('vimIsCommand'    , s:purple)
call s:HL('vimSynType'      , s:blue)
call s:HL('vimOption'       , s:blue)
call s:HL('vimAutoEvent'    , s:blue)
call s:HL('vimMapMod'       , s:white)
call s:HL('vimMapModKey'    , s:green)
call s:HL('vimNotation'     , s:green)
call s:HL('vimBracket'      , s:white)
call s:HL('vimFuncSID'      , s:purple)
call s:HL('vimString'       , s:yellow)
" }}}

" HTML ----------------------------------------------------------------------{{{
call s:HL('htmlTag'            , s:white)
call s:HL('htmlEndTag'         , s:white)
call s:HL('htmlTagName'        , s:red)
call s:HL('htmlArg'            , s:green)
call s:HL('htmlTitle'          , s:white)
call s:HL('htmlLink'           , s:white)
call s:HL('htmlItalic'         , s:white, 'NONE')
call s:HL('htmlH1'             , s:white)
call s:HL('htmlH2'             , s:white)
call s:HL('htmlH3'             , s:white)
call s:HL('htmlH4'             , s:white)
call s:HL('htmlH5'             , s:white)
call s:HL('htmlH6'             , s:white)
call s:HL('htmlSpecialTagName' , s:red)
call s:HL('htmlSpecialChar'    , s:white)
call s:HL('htmlString'         , s:yellow)
" }}}
" CSS -----------------------------------------------------------------------{{{
call s:HL('cssTagName'           , s:red)
call s:HL('cssDefinition'        , s:yellow)
call s:HL('cssBraces'            , s:white)
call s:HL('cssProp'              , s:orange)
call s:HL('cssColor'             , s:yellow)
call s:HL('cssUnitDecorators'    , s:yellow)
call s:HL('cssFunctionName'      , s:blue)
call s:HL('cssFunctionComma'     , s:white)
call s:HL('cssValueNumber'       , s:yellow)
call s:HL('cssValueLength'       , s:yellow)
call s:HL('cssClassName'         , s:green)
call s:HL('cssClassNameDot'      , s:green)
call s:HL('cssIdentifier'        , s:green)
call s:HL('cssPseudoClass'       , s:blue)
call s:HL('cssPseudoClassId'     , s:blue)
call s:HL('cssPseudoClassFn'     , s:blue)
call s:HL('cssInclude'           , s:white)
call s:HL('cssIncludeKeyword'    , s:purple)
call s:HL('cssMediaKeyword'      , s:purple)
call s:HL('cssMediaType'         , s:white)
call s:HL('cssVendor'            , s:lightgray)
call s:HL('cssSelectorOp'        , s:white)
call s:HL('cssSelectorOp2'       , s:white)
call s:HL('cssAttributeSelector' , s:blue)
call s:HL('cssAttr'              , s:green)
call s:HL('cssBorderAttr'        , s:yellow)
call s:HL('cssTableAttr'         , s:yellow)
call s:HL('cssCommonAttr'        , s:yellow)
call s:HL('cssFontAttr'          , s:yellow)
call s:HL('cssPositioningAttr'   , s:yellow)
call s:HL('cssBoxAttr'           , s:yellow)
call s:HL('cssTextAttr'          , s:yellow)
call s:HL('cssBackgroundAttr'    , s:yellow)
call s:HL('cssUIAttr'            , s:yellow)
call s:HL('cssKeyFrameSelector'  , s:purple)
call s:HL('cssGradientAttr'      , s:purple)
call s:HL('cssValueTime'         , s:yellow)
call s:HL('cssAnimationAttr'     , s:yellow)
call s:HL('cssTransitionAttr'    , s:yellow)
call s:HL('cssValueAngle'        , s:yellow)
call s:HL('cssStringQ'           , s:yellow)
call s:HL('cssStringQQ'          , s:yellow)
" }}}
" JAVASCRIPT ----------------------------------------------------------------{{{
call s:HL('JavaScriptIdentifier'  , s:red)
call s:HL('JavaScriptFunction'    , s:blue)
call s:HL('JavaScriptBraces'      , s:white)
call s:HL('JavaScriptStatement'   , s:blue)
call s:HL('JavaScriptReserved'    , s:red)
call s:HL('JavaScriptConditional' , s:orange)
call s:HL('JavaScriptRepeat'      , s:orange)
call s:HL('JavaScriptNumber'      , s:yellow)
call s:HL('JavaScriptMember'      , s:blue)

" pangloss/vim-javascript
call s:HL('jsStorageClass'      , s:red)
call s:HL('jsOperator'          , s:red)
call s:HL('jsFunction'          , s:blue)
call s:HL('jsFuncName'          , s:blue)
call s:HL('jsFuncArgs'          , s:white)
call s:HL('jsFuncCall'          , s:purple)
call s:HL('jsReturn'            , s:pink)
call s:HL('jsUndefined'         , s:pink)
call s:HL('jsNull'              , s:pink)
call s:HL('jsGlobalObjects'     , s:blue)
call s:HL('jsGlobalNodeObjects' , s:purple)
call s:HL('jsConditional'       , s:green)
call s:HL('jsRepeat'            , s:green)
call s:HL('jsNumber'            , s:yellow)
call s:HL('jsThis'              , s:orange)
call s:HL('jsTernaryIfOperator' , s:white)
call s:HL('jsObjectKey'         , s:green)
call s:HL('jsFunctionKey'       , s:green)
call s:HL('jsTry'               , s:red)
call s:HL('jsCatch'             , s:red)
call s:HL('jsException'         , s:red)
call s:HL('jsAsyncKeyword'      , s:purple)
call s:HL('jsModuleKeyword'     , s:blue)
call s:HL('jsModuleOperators'   , s:purple)
call s:HL('jsModuleDefault'     , s:red)
call s:HL('jsClassKeyword'      , s:red)
call s:HL('jsClassDefinition'   , s:blue)
call s:HL('jsArrowFunction'     , s:red)
call s:HL('jsObjectFuncName'    , s:purple)
call s:HL('jsTemplateVar'       , s:white)
call s:HL('jsSuper'             , s:purple)
call s:HL('jsNoise'             , s:red)
call s:HL('jsStatement'         , s:purple)
call s:HL('jsString'            , s:yellow)
call s:HL('jsBooleanTrue'       , s:pink)
call s:HL('jsBooleanFalse'      , s:pink)
call s:HL('jsImport'            , s:green)
call s:HL('jsFrom'              , s:green)
call s:HL('jsExport'            , s:green)
call s:HL('jsExportDefault'     , s:purple)
call s:HL('jsExtendsKeyword'    , s:red)
" }}}

" JADE/PUG ------------------------------------------------------------------{{{
call s:HL('pugScriptStatement'      , s:purple)
call s:HL('pugId'                   , s:orange)
call s:HL('pugIdChar'               , s:orange)
call s:HL('pugClass'                , s:orange)
call s:HL('pugClassChar'            , s:orange)
call s:HL('pugAttributes'           , s:green)
call s:HL('pugAttributesDelimiter'  , s:white)
call s:HL('pugDocType'              , s:lightgray)
call s:HL('pugTag'                  , s:red)
call s:HL('pugJavascript'           , s:red)
call s:HL('pugJavascriptTag'        , s:red)
call s:HL('pugBlockExpansionChar'   , s:white)
call s:HL('pugScriptLoopKeywords'   , s:green)
call s:HL('pugJavascriptOutputchar' , s:purple)
call s:HL('pugScriptConditional'    , s:green)
" }}}
" SASS ----------------------------------------------------------------------{{{
call s:HL('sassVariable'     , s:green)
call s:HL('sassMixin'        , s:blue)
call s:HL('sassMixinName'    , s:blue)
call s:HL('sassMixing'       , s:blue)
call s:HL('sassCssAttribute' , s:yellow)
call s:HL('sassAmpersand'    , s:purple)
call s:HL('sassClass'        , s:green)
call s:HL('sassClassChar'    , s:green)
call s:HL('sassExtend'       , s:purple)
call s:HL('sassInclude'      , s:purple)
call s:HL('sassMedia'        , s:purple)
call s:HL('sassFunction'     , s:blue)
call s:HL('sassControl'      , s:blue)
" }}}

" RUBY ----------------------------------------------------------------------{{{
call s:HL('rubyClass'                 , s:red)
call s:HL('rubyConstant'              , s:blue)
call s:HL('rubyDefine'                , s:red)
call s:HL('rubyFunction'              , s:green)
call s:HL('rubyStringDelimiter'       , s:yellow)
call s:HL('rubyLocalVariableOrMethod' , s:blue)
call s:HL('rubyKeyword'               , s:red)
call s:HL('rubyKeywordAsMethod'       , s:purple)
call s:HL('rubyControl'               , s:purple)
call s:HL('rubyInclude'               , s:purple)
call s:HL('rubyAccess'                , s:purple)
call s:HL('rubyConditional'           , s:orange)
call s:HL('rubyException'             , s:orange)
call s:HL('rubyString'                , s:yellow)
call s:HL('rubyAttribute'             , s:green)

call s:HL('erubyDelimiter'            , s:red)
" }}}

" MARKDOWN ------------------------------------------------------------------{{{
call s:HL('markdownH1'                , s:red)
call s:HL('markdownH2'                , s:red)
call s:HL('markdownH3'                , s:red)
call s:HL('markdownH4'                , s:red)
call s:HL('markdownH5'                , s:red)
call s:HL('markdownH6'                , s:red)
call s:HL('markdownHeadingDelimiter'  , s:red)
call s:HL('markdownLinkText'          , s:green)
call s:HL('markdownLinkTextDelimiter' , s:green)
call s:HL('markdownUrl'               , s:yellow)
call s:HL('markdownCodeBlock'         , s:yellow)
call s:HL('markdownId'                , s:yellow)
call s:HL('markdownIdDeclaration'     , s:green)
call s:HL('markdownCode'              , s:lightgray)
call s:HL('markdownCodeDelimiter'     , s:lightgray)
call s:HL('markdownRule'              , s:lightgray)
" }}}
" JSON ----------------------------------------------------------------------{{{
call s:HL('jsonKeyword' , s:green)
call s:HL('jsonBraces'  , s:white)
call s:HL('jsonString'  , s:yellow)
call s:HL('jsonBoolean' , s:pink)
" }}}
" SNIPPETS ------------------------------------------------------------------{{{
call s:HL('snippet'       , s:lightgray)
call s:HL('multiSnipText' , s:red)
call s:HL('placeholder'   , s:white)
" }}}
" SHELL ---------------------------------------------------------------------{{{
call s:HL('shConditional' , s:orange)
call s:HL('shExpr'        , s:white)
call s:HL('shRange'       , s:white)
call s:HL('shTestOpr'     , s:orange)
call s:HL('shStatement'   , s:red)
call s:HL('shEcho'        , s:red)
call s:HL('shQuote'       , s:yellow)
call s:HL('shSingleQuote' , s:yellow)
call s:HL('shOperator'    , s:red)
call s:HL('shFunctionKey' , s:blue)
call s:HL('shFunction'    , s:green)
call s:HL('shFunctionTwo' , s:white)
call s:HL('shVariable'    , s:green)
call s:HL('shAlias'       , s:green)

" BASH
call s:HL('bashStatement', s:red)
" }}}


" SPECTIFIC PLUGINS COLORS
" NERDTREE ------------------------------------------------------------------{{{
call s:HL('NERDTreeUp'       , s:yellow)
call s:HL('NERDTreeDir'      , s:green)
call s:HL('NERDTreeFile'     , s:white)
call s:HL('NERDTreeExecFile' , s:white)
call s:HL('NERDTreeDirSlash' , s:gray)
call s:HL('NERDTreeOpenable' , s:gray)
call s:HL('NERDTreeClosable' , s:gray)
call s:HL('NERDTreeCWD'      , s:orange)
call s:HL('NERDTreeHelp'     , s:lightgray)
" }}}
