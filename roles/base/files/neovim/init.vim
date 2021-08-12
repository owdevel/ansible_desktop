" Nvim Settings
set number
set relativenumber

set expandtab!
set tabstop=2
set shiftwidth=2

set list
set lcs=tab:\|\ 

" Vim Plug
" Specify a directory for plugins
" - For Neovim: stdpath('data') . '/plugged'
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin(stdpath('data') . '/plugged')


" Initialize plugin system
call plug#end()


