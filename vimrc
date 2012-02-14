""" Change <leader> to ,
let mapleader = ','

""" Enable mouse
set mouse=a

""" Shortcut to edit vimrc
nmap <leader>v :tabedit $MYVIMRC<CR>

""" Auto source vimrc on write
au BufWritePost .vimrc source $MYVIMRC

""" Map windows movment to <CTRL>-[hjkl]
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l

""" Map tab movment to <leader>-# and <leader>-tab
map <leader><tab> gt
map <leader><S-tab> gT
map <leader>1 1gt
map <leader>2 2gt
map <leader>3 3gt
map <leader>4 4gt
map <leader>5 5gt
map <leader>6 6gt
map <leader>7 7gt
map <leader>8 8gt
map <leader>9 9gt
map <leader>0 :tablast<CR>
