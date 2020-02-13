
" UltiSnips: {{{
if exists('g:loaded_ultisnips')
  " " Trigger configuration. Do not use <tab> if you use
  " " https://github.com/Valloric/YouCompleteMe.
  " let g:UltiSnipsExpandTrigger='<leader>s'
  " let g:UltiSnipsJumpForwardTrigger='<c-j>'
  " let g:UltiSnipsJumpBackwardTrigger='<c-k>'

  " From: https://github.com/autozimu/LanguageClient-neovim/wiki/UltiSnips-Integration
  let g:UltiSnipsExpandTrigger = "<Plug>(ultisnips_expand)"
  inoremap <silent> <C-U> <C-R>=cm#sources#ultisnips#trigger_or_popup("\<Plug>(ultisnips_expand)")<CR>
  let g:UltiSnipsJumpForwardTrigger = "<C-J>"
  let g:UltiSnipsJumpBackwardTrigger = "<C-K>"

  " If you want :UltiSnipsEdit to split your window.
  "let g:UltiSnipsEditSplit="vertical"

  " Python docstring style
  let g:ultisnips_python_style = 'sphinx'
  " let g:ultisnips_python_style = 'google'

  " if exists('g:loaded_cm')
  "   let g:UltiSnipsExpandTrigger = "<Plug>(ultisnips_expand)"
  "   inoremap <silent> <c-u> <c-r>=cm#sources#ultisnips#trigger_or_popup("\<Plug>(ultisnips_expand)")<cr>
  " else
  "   let g:UltiSnipsExpandTrigger="<c-j>"
  " endif
  "
  " let g:UltiSnipsJumpForwardTrigger="<c-j>"
  " let g:UltiSnipsJumpBackwardTrigger="<c-k>"
  " let g:UltiSnipsListSnippets="<c-u>"

endif
" }}}

" NeoSnippet: {{{
if exists('g:loaded_neosnippet')
  " Plugin key-mappings.
  "imap <C-k>     <Plug>(neosnippet_expand_or_jump)
  "smap <C-k>     <Plug>(neosnippet_expand_or_jump)
  "xmap <C-k>     <Plug>(neosnippet_expand_target)

  "" SuperTab like snippets behavior.
  ""imap <expr><TAB>
  "" \ pumvisible() ? "\<C-n>" :
  "" \ neosnippet#expandable_or_jumpable() ?
  "" \    "\<Plug>(neosnippet_expand_or_jump)" : "\<TAB>"
  "smap <expr><TAB> neosnippet#expandable_or_jumpable() ?
  "      \ "\<Plug>(neosnippet_expand_or_jump)" : "\<TAB>"

  " I want to use my tab more smarter. If we are inside a completion menu jump
  " to the next item. Otherwise check if there is any snippet to expand, if yes
  " expand it. Also if inside a snippet and we need to jump tab jumps. If none
  " of the above matches we just call our usual 'tab'.
  function! s:neosnippet_complete() abort
    if pumvisible()
      return "\<c-n>"
    else
      if neosnippet#expandable_or_jumpable()
        return "\<Plug>(neosnippet_expand_or_jump)"
      endif
      return "\<tab>"
    endif
  endfunction

  "imap <expr><TAB> <SID>neosnippet_complete()
  inoremap <expr><TAB> <SID>neosnippet_complete()

  let g:neosnippet#enable_conceal_markers = 1
  let g:neosnippet#expand_word_boundary = 1
  let g:neosnippet#enable_completed_snippet = 1
  let g:neosnippet#enable_snipmate_compatibility = 1
endif
" }}}
