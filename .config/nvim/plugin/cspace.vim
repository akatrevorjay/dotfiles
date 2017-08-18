if !exists('g:loaded_ctrlspace')
  finish
end

" Ctrl-P vimulation
nnoremap <silent><C-p> :CtrlSpace O<CR>

nnoremap <silent><C-b> :CtrlSpace /<CR>
nnoremap <silent><C-/> :CtrlSpace /<CR>

"nnoremap <silent><C-T> :CtrlSpace L<CR>

" Save workspace automagically
let g:CtrlSpaceLoadLastWorkspaceOnStart = 1
let g:CtrlSpaceSaveWorkspaceOnSwitch = 1
let g:CtrlSpaceSaveWorkspaceOnExit = 1
