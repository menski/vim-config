""" Change <leader> to ,
let mapleader = ','

""" Save tmp and swp files to ~/.vim/tmp
set backupdir=~/.vim/tmp
set directory=~/.vim/tmp

""" Enable mouse
set mouse=a

""" Shortcut to edit vimrc
nmap <leader>v :tabedit $MYVIMRC<CR>

""" Auto source vimrc on write
au BufWritePost .vimrc source $MYVIMRC

""" Additional editing command with path expansion
cnoremap %% <C-R>=expand('%:h').'/'<cr>
map <leader>ew :e %%
map <leader>es :sp %%
map <leader>ev :vsp %%
map <leader>et :tabe %%

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

""" Toggle list: show invisible characters
nmap <leader>l :set list!<CR>

""" Default no list
set nolist

""" Adjust list (invisible) characters
set listchars=tab:»-,trail:▸,eol:¶,extends:>,precedes:<

""" Set linebreak
set linebreak

""" Show line breaking character
set showbreak=↳

""" Default tab behavior
set tabstop=4 shiftwidth=4 softtabstop=4 noexpandtab
