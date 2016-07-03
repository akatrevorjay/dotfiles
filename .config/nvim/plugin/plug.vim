
" Unload plugin in runtimepath
function! s:PlugUnload(name)
execute 'set rtp-=' . g:plug_home . '/' . a:name . '/'
endfunction

command! -nargs=* PlugUnload call s:PlugUnload('<args>')

function! s:PlugNewUp()
execute 'PlugUpgrade'
	execute 'PlugUpdate'
	execute 'PlugInstall'
endfunction

command! -nargs=* PlugNewUp call s:PlugNewUp('<args>')

function! s:InstallPlug()
	" If we don't have vim plug installed, install it
	if empty(glob('~/.vim/autoload/plug.vim'))
		silent! curl -fLo ~/.vim/autoload/plug.vim --create-dirs
			\ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
		autocmd VimEnter * silent! PlugInstall | source $MYVIMRC
	endif
endfunction

command! InstallPlug call s:InstallPlug()

