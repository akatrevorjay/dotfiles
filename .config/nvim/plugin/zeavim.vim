if !exists('g:loaded_zeavim')
  finish
endif

nmap gzz <Plug>Zeavim           " <leader>z (NORMAL mode)
vmap gzz <Plug>ZVVisSelection   " <leader>z (VISUAL mode)
nmap gz <Plug>ZVMotion          " gz{motion} (NORMAL mode)
nmap gZ <Plug>ZVKeyDocset       " <leader><leader>z
