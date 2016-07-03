
if (&cp || exists('#GlobalAutoCmd'))
  finish
endif

" syntax highlight's is ~/.nvim/after/syntax/vim.vim
augroup GlobalAutoCmd
  autocmd!
augroup END
command! -nargs=* Gautocmd   autocmd GlobalAutoCmd <args>
command! -nargs=* Gautocmdft autocmd GlobalAutoCmd FileType <args>

" Smart help window
" https://github.com/rhysd/dotfiles/blob/master/nvimrc#L380-L405
command! -nargs=* -complete=help SmartHelp call <SID>smart_help(<q-args>)
function! s:smart_help(args)
  try
    if winwidth(0) > winheight(0) * 2
      execute 'vertical rightbelow help ' . a:args
    else
      execute 'rightbelow help ' . a:args
    endif
  catch /^Vim\%((\a\+)\)\=:E149/
    echohl ErrorMsg
    echomsg 'E149: Sorry, no help for ' . a:args
    echohl None
  endtry
endfunction

" I really dislike that GitHub only gives you the full URL. Most of the time, in VIM, I don't want that.
function! SimplifyGitHubURLs()
  "Get current line...
  let curr_line   = getline('.')

  "Replace raw ampersands...
  let replacement = substitute(curr_line,'git@github.com:(.*).git', '\1', 'g')

  "Update current line...
  call setline('.', replacement)
endfunction
command! SimplifyGitHubURLs call SimplifyGitHubURLs()

" Json Format
command! -nargs=0 -bang -complete=command FormatJSON %!python -m json.tool

" Clear message logs
command! MessageClear for n in range(200) | echom "" | endfor

" Binary edit mode
" need open nvim with `-b` flag
function! BinaryMode() abort
  if !has('binary')
    echoerr "BinaryMode must be 'binary' option"
    return
  endif

  execute '%!xxd'
endfunction

" Set parent git directory to current path
" http://michaelheap.com/set-parent-git-directory-to-current-path-in-vim/
function! CtagsGitRoot()
  let b:gitdir = system('git rev-parse --show-toplevel')
  if b:gitdir !~? '^fatal'
    cd `=b:gitdir`
    call vimproc#system('ctags -R --fields=+l --sort=yes &')
  endif
endfunction

"" Vim
"" <C-u>: http://d.hatena.ne.jp/e_v_e/20150101/1420067539
"Gautocmdft vim nnoremap <silent> K :<C-u>SmartHelp<Space><C-r><C-w><CR>

""
"" Syntax
""

" Show highlight group name under a cursor
command! ShowHlGroup echo synIDattr(synIDtrans(synID(line('.'), col('.'), 1)), 'name')

" Display syntax infomation on under the current cursor
function! s:get_syn_id(transparent)
  let synid = synID(line('.'), col('.'), 1)
  if a:transparent
    return synIDtrans(synid)
  else
    return synid
  endif
endfunction
function! s:get_syn_attr(synid)
  let name = synIDattr(a:synid, 'name')
  let ctermfg = synIDattr(a:synid, 'fg', 'cterm')
  let ctermbg = synIDattr(a:synid, 'bg', 'cterm')
  let guifg = synIDattr(a:synid, 'fg', 'gui')
  let guibg = synIDattr(a:synid, 'bg', 'gui')
  return {
        \ 'name': name,
        \ 'ctermfg': ctermfg,
        \ 'ctermbg': ctermbg,
        \ 'guifg': guifg,
        \ 'guibg': guibg}
endfunction
function! s:get_syn_info()
  let baseSyn = s:get_syn_attr(s:get_syn_id(0))
  echo 'name: ' . baseSyn.name .
        \ ' CTERMFG: ' . baseSyn.ctermfg .
        \ ' ctermbg: ' . baseSyn.ctermbg .
        \ ' guifg: ' . baseSyn.guifg .
        \ ' guibg: ' . baseSyn.guibg
  let linkedSyn = s:get_syn_attr(s:get_syn_id(1))
  echo 'link to'
  echo 'name: ' . linkedSyn.name .
        \ ' ctermfg: ' . linkedSyn.ctermfg .
        \ ' ctermbg: ' . linkedSyn.ctermbg .
        \ ' guifg: ' . linkedSyn.guifg .
        \ ' guibg: ' . linkedSyn.guibg
endfunction
command! SyntaxInfo call s:get_syn_info()

