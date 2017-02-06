if ! exists('g:loaded_startify')
  finish
endif

let g:startify_bookmarks = [
      \ {'v': '~/.vim/rc/autoload/local.vim'},
      \ {'vp': '~/.vim/plugins.vim'},
      \ {'z': '~/.zplugin/.zshrc'},
      \ {'zp': '~/.zplugin/state' },
      \ {'ze': '~/.zshenv'},
      \]

let g:startify_bookmarks = [
      \ { 'v': '~/.vim/vimrc' },
      \ { 't': '/tmp' },
      \ { 'p' : expand('~/vk/git/proxy')},
      \ expand('~/vk/git/proxy/libs/vkconf'),
      \ ]
