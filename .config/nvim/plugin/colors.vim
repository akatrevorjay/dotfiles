nmap <F10> :CycleColorNext<cr>
nmap <F11> :CycleColorPrev<cr>
nmap <F12> :colors<cr>

map <F3> :echo "hi<" . synIDattr(synID(line("."),col("."),1),"name") . '> trans<' . synIDattr(synID(line("."),col("."),0),"name") . "> lo<" . synIDattr(synIDtrans(synID(line("."),col("."),1)),"name") . ">"<CR>

