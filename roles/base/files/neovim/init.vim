" Vim Plug
" Specify a directory for plugins
" - For Neovim: stdpath('data') . '/plugged'
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin(stdpath('data') . '/plugged')

" Syntax
Plug 'sheerun/vim-polyglot'
Plug 'neoclide/coc.nvim', {'branch': 'release'}

" Version Control
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'
Plug 'Xuyuanp/nerdtree-git-plugin'

" Editing
Plug 'tpope/vim-surround'
Plug 'tpope/vim-repeat'
Plug 'scrooloose/nerdtree'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

" UI
Plug 'vim-airline/vim-airline'
Plug 'ryanoasis/vim-devicons'
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'


" Initialize plugin system
call plug#end()

let g:config_file_list = ['general.vim',
  \ 'nerdtree.vim',
  \ 'coc.vim',
  | 'fzf.vim',
  \ ]

let g:nvim_config_root = expand('<sfile>:p:h')
for s:fname in g:config_file_list
  execute printf('source %s/%s', g:nvim_config_root, s:fname)
endfor
