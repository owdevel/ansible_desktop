" Mapping selecting mappings
nmap <leader><s-tab> <plug>(fzf-maps-n)
xmap <leader><s-tab> <plug>(fzf-maps-x)
omap <leader><s-tab> <plug>(fzf-maps-o)

# File Mappings
nmap <space><f> <plug>(fzf-complete-file)
xmap <space><f> <plug>(fzf-complete-file)
omap <space><f> <plug>(fzf-complete-file)

" Insert mode completion
imap <c-x><c-k> <plug>(fzf-complete-word)
imap <c-x><c-f> <plug>(fzf-complete-path)
imap <c-x><c-l> <plug>(fzf-complete-line)

