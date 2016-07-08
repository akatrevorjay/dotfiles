
"" Multiple cursors
" Default mapping
"let g:multi_cursor_next_key='<C-n>'
"let g:multi_cursor_prev_key='<C-p>'
"let g:multi_cursor_skip_key='<C-x>'
"let g:multi_cursor_quit_key='<Esc>'

"" Oblique
let g:oblique#incsearch_highlight_all=1
"Gautocmd User Oblique       normal! zz
"Gautocmd User ObliqueStar   normal! zz
"Gautocmd User ObliqueRepeat normal! zz

" TaskWarrior: {{{
" default task report type
let g:task_report_name     = 'next'
" custom reports have to be listed explicitly to make them available
let g:task_report_command  = ['minimal', 'newest', 'oldest', 'overdue', 'recurring', 'waiting', 'all', 'blocked']
" whether the field under the cursor is highlighted
let g:task_highlight_field = 1
" can not make change to task data when set to 1
let g:task_readonly        = 0
" vim built-in term for task undo in gvim
let g:task_gui_term        = 1
" allows user to override task configurations. Seperated by space. Defaults to ''
let g:task_rc_override     = 'rc.defaultwidth=999 rc.defaultheight=0 rc.confirmation=no'

" default fields to ask when adding a new task
let g:task_default_prompt  = ['due', 'description']
" whether the info window is splited vertically
let g:task_info_vsplit     = 1  " 0
" info window size
"let g:task_info_size       = 15
" info window position
"let g:task_info_position   = 'belowright'
" directory to store log files defaults to taskwarrior data.location
"let g:task_log_directory   = '~/.task'
" max number of historical entries
"let g:task_log_max         = '20'
" forward arrow shown on statusline
"let g:task_left_arrow      = ' <<'
" backward arrow ...
"let g:task_left_arrow      = '>> '
" }}}

" Tagbar: {{{
nmap <F8> :TagbarToggle<CR>
let g:tagbar_width=30
"let g:tagbar_left = 1
"let g:tagbar_vertical = 1
let g:tagbar_autoclose = 1
let g:tagbar_autofocus = 1
let g:tagbar_autopreview = 0
let g:tagbar_autoshowtag = 0
let g:tagbar_compact = 0
"let g:tagbar_indent = 2
let g:tagbar_show_linenumbers = 1
let g:tagbar_singleclick = 1
" }}}

" Ignore: default plugins {{{
" http://lambdalisue.hatenablog.com/entry/2015/12/25/000046
"let g:loaded_2html_plugin      = 1
"let g:loaded_getscript         = 1
"let g:loaded_getscriptPlugin   = 1
"let g:loaded_gzip              = 1
"let g:loaded_netrw             = 1
"let g:loaded_netrwFileHandlers = 1
"let g:loaded_netrwPlugin       = 1
"let g:loaded_netrwSettings     = 1
"let g:loaded_rrhelper          = 1
"let g:loaded_tar               = 1
"let g:loaded_tarPlugin         = 1
"let g:loaded_vimball           = 1
"let g:loaded_vimballPlugin     = 1
"let g:loaded_zip               = 1
"let g:loaded_zipPlugin         = 1
" }}}
" Konfekt/FastFold {{{
let g:tex_fold_enabled=1
let g:vimsyn_folding='afP'
let g:xml_syntax_folding = 1
let g:php_folding = 1
let g:perl_fold = 1
Gautocmdft perl,php,xml,tex,python set foldmethod=syntax
" }}}
" gitgutter: {{{
let g:gitgutter_enabled = 1
let g:gitgutter_realtime = 0
let g:gitgutter_sign_column_always = 1
let g:gitgutter_max_signs = 1000
let g:gitgutter_map_keys = 0
" }}}

" TaskList: {{{
let g:tlTokenList = ['FUCK', 'FIX', 'FIXME', 'TODO', 'XXX', 'WTF', 'OMG', 'OMFG', 'IMPORTANT', 'HACK']
" }}}

" Notes: {{{
let g:notes_directories = ['~/Notes']
" }}}

" NERDCommenter: {{{
let g:NERDCustomDelimiters = {
      \ 'yaml': { 'left': '#'},
      \}
" }}}

" NeoPairs
let g:neopairs#enable = 1

" Convenient command to see the difference between the current buffer and the
" file it was loaded from, thus the changes you made.
" Only define it when not defined already.
if !exists(':DiffOrig')
  command DiffOrig vert new | set buftype=nofile | read ++edit # | 0d_ | diffthis
        \ | wincmd p | diffthis
endif

" vim-tmuxify
"let g:tmuxify_custom_command = 'tmux split-window -d'
let g:tmuxify_map_prefix = '<leader>m'
let g:tmuxify_global_maps = 0
let g:tmuxify_run = {
      \ 'sh': 'bash %',
      \ 'go': 'go build %',
      \}
"\ 'python': 'pytest',

let g:echodoc_enable_at_startup = 1

"let rst_syntax_code_list = ['vim', 'python']
let g:riv_python_rst_hl = 1

" bind ^L reset search selection map
nnoremap <expr><leader><esc> clever_f#reset() | nohlsearch

