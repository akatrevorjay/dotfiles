"" emoji
if ! exists('g:loaded_emoji')
  finish
endif

let g:gitgutter_sign_added = emoji#for('small_blue_diamond')
let g:gitgutter_sign_modified = emoji#for('small_orange_diamond')
let g:gitgutter_sign_removed = emoji#for('small_red_triangle')
let g:gitgutter_sign_modified_removed = emoji#for('collision')
"set completefunc=emoji#complete
" replace :emojiname: with emoji: %s/:\([^:]\+\):/\=emoji#for(submatch(1), submatch(0))/g

