" Nvim Settings
set number



" Vim Plug
" Specify a directory for plugins
" - For Neovim: stdpath('data') . '/plugged'
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin(stdpath('data') . '/plugged')

Plug 'Yggdroot/indentLine'

" Initialize plugin system
call plug#end()


