
if (!exists('g:loaded_unite'))
  finish
endif

" Restricts mru to current project/dir
call unite#custom#source(
      \ 'neomru/file', 'matchers',
      \ ['matcher_project_files', 'matcher_fuzzy'])

