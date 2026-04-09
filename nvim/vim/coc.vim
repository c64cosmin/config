set updatetime=300
"tab trigger
inoremap <silent><expr> <Tab> coc#pum#visible() ? coc#pum#confirm() : "\<Tab>"
" Use <c-space> to trigger completion.
inoremap <silent><expr> <c-@> coc#refresh()
" GoTo code navigation.
nmap <Leader>yy :CocRestart<CR>
nmap <Leader>yf <Plug>(coc-definition)
nmap <Leader>yt <Plug>(coc-type-definition)
nmap <Leader>yd <Plug>(coc-implementation)
nmap <Leader>yr <Plug>(coc-references)
nmap <leader>yn <Plug>(coc-rename)
nmap <leader>yx <Plug>(coc-fix-current)
nnoremap <Leader>yt :call ShowDocumentation()<CR>
" Show all diagnostics.
nnoremap <Leader>ye :<C-u>CocList diagnostics<cr>

function! ShowDocumentation()
  if CocAction('hasProvider', 'hover')
    call CocActionAsync('doHover')
  endif
endfunction
