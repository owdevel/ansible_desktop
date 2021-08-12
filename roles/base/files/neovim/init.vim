" Nvim Settings
set number
set relativenumber

set tabstop=4
set softtabstop=4
set shiftwidth=4

" Vim Plug
" Specify a directory for plugins
" - For Neovim: stdpath('data') . '/plugged'
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin(stdpath('data') . '/plugged')

Plug 'vim-airline/vim-airline'

" Initialize plugin system
call plug#end()


