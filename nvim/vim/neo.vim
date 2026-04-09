set clipboard=unnamed
"set mouse=
"neovim open terminal and the enter inster mode
autocmd TermOpen * startinsert

"wildmenu arrows
set wildcharm=<C-Z>
cnoremap <expr> <up> wildmenumode() ? "\<left>" : "\<up>"
cnoremap <expr> <down> wildmenumode() ? "\<right>" : "\<down>"
cnoremap <expr> <left> wildmenumode() ? "\<up>" : "\<left>"
cnoremap <expr> <right> wildmenumode() ? " \<bs>\<C-Z>" : "\<right>"

tnoremap <C-w><Left> <C-\><C-n><C-w>h
tnoremap <C-w><Down> <C-\><C-n><C-w>j
tnoremap <C-w><Up> <C-\><C-n><C-w>k
tnoremap <C-w><Right> <C-\><C-n><C-w>l
tnoremap <C-w>h <C-\><C-n><C-w>h
tnoremap <C-w>j <C-\><C-n><C-w>j
tnoremap <C-w>k <C-\><C-n><C-w>k
tnoremap <C-w>l <C-\><C-n><C-w>l
tnoremap <C-w><C-w> <C-\><C-n><C-w><C-w>

tnoremap <C-w>l <C-\><C-n><C-w>l

tnoremap <silent> <C-\><C-\> <C-\><C-n>

autocmd BufEnter * if &buftype == "terminal" | exec "normal! i" | endif
