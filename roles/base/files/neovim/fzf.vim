" Mapping selecting mappings
nmap <leader><s-tab> <plug>(fzf-maps-n)
xmap <leader><s-tab> <plug>(fzf-maps-x)
omap <leader><s-tab> <plug>(fzf-maps-o)

" File Mappings
nnoremap <c-p> :Files<CR>
nnoremap <c-P> :Commands<CR>

" Insert mode completion
imap <c-x><c-k> <plug>(fzf-complete-word)
imap <c-x><c-f> <plug>(fzf-complete-path)
imap <c-x><c-l> <plug>(fzf-complete-line)

