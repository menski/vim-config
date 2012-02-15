:""" Pathogen plugin
runtime bundle/pathogen/autoload/pathogen.vim
call pathogen#infect()
call pathogen#helptags()

""" Change <leader> to ,
let mapleader = ','

""" Bind W to w (typo)
command! W :w

""" Save tmp and swp files to ~/.vim/tmp
set backupdir=~/.vim/tmp
set directory=~/.vim/tmp

""" Enable mouse
set mouse=a

""" Cryptmethod
set cryptmethod=blowfish

""" Syntax highlighting
syntax on

""" Filetype detection
filetype plugin indent on

""" Line Numbers
set number
set numberwidth=1
""" Toggle line numbering
nmap <leader>n :set number!<CR>

""" Show cursorline
set cursorline

""" Always show statusline
set laststatus=2

""" Statusline configuration
set statusline=%<%f\ (%{&ft})%=%-19(%3l,%02c%03V%)%{fugitive#statusline()}

""" Show partial command
set showcmd

""" Report all changes
set report=0

""" Use wildmode and wildmenu
set wildmode=full
set wildmenu

""" Shortcut to edit vimrc
nmap <leader>v :tabedit <C-R>=resolve($MYVIMRC)<CR><CR>

""" Reload vimrc
nmap <leader>V :source $MYVIMRC<CR>

""" Auto source vimrc on write
""au BufWritePost vimrc source $MYVIMRC

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

""" Indention
set autoindent smartindent

""" Spell checking
set nospell spelllang=en_us
nmap <leader>s :set spell!<CR>

""" Searching
set ignorecase
set smartcase
set incsearch
set hlsearch

""" Toggle highlighting
nmap <F3> :set hlsearch!<CR>

""" Toggle paste mode
set pastetoggle=<leader>p

""" Folding
set foldmethod=marker
nnoremap <space> za
vnoremap <space> zf

""" Matching
set showmatch
set matchpairs+=<:>

""" Bind make to <F12>
nmap <F12> :make

""" Open cmus
map <leader>m :silent !cmus<CR>:redraw!<CR>

""" Open url under cursor
nnoremap <leader>o :silent !xdg-open <C-R>=escape("<C-R><C-F>", "#?&;\|%")<CR><CR>:redraw!<CR>

""" Open urls in buffer with urlview
nnoremap <leader>O :silent !urlview %<CR>:redraw!<CR>

""" SnipMate: goto ~/.vim/snippets directory
nmap <leader>s :tabe ~/.vim/snippets<CR>

""" SnipMate: reload all snippets after editing
au BufWritePost *.snippets call ReloadAllSnippets()

""" Gundo: toogle gundo view
nnoremap <F5> :GundoToggle<CR>
