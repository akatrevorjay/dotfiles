
" Unload plugin in runtimepath
function! s:PlugUnload(name)
  execute 'set rtp-=' . g:plug_home . '/' . a:name . '/'
endfunction

command! -nargs=* PlugUnload call s:PlugUnload('<args>')

function! s:Update()
  execute 'PlugUpgrade | PlugUpdate | PlugInstall'
  if has('nvim')
    execute 'UpdateRemotePlugins'
  endif
  execute 'q'
  execute 'q'
endfunction

command! Update call s:Update()

function! s:InstallPlug()
	" If we don't have vim plug installed, install it
	if empty(glob('~/.vim/autoload/plug.vim'))
		silent! curl -fLo ~/.vim/autoload/plug.vim --create-dirs
			\ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
		autocmd VimEnter * silent! PlugInstall | source $MYVIMRC
	endif
endfunction

command! InstallPlug call s:InstallPlug()

