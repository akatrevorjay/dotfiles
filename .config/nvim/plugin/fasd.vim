"" Z -- cd to recent / frequent directories
command! -nargs=* Z :call Z(<f-args>)
function! Z(...)
  let cmd_args = ''
  for arg in a:000
    let cmd_args = cmd_args . ' ' . shellescape(arg)
  endfor

  let cmd = 'zsh -i -c "setopt nointeractive; fasd -d -e printf' . cmd_args . '"'
  echo cmd

  let path = system(cmd)
  if isdirectory(path)
    echo path
    exec 'cd' fnameescape(path)
  endif
endfunction

