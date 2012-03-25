""" Pathogen plugin
runtime bundle/pathogen/autoload/pathogen.vim
call pathogen#infect()
call pathogen#helptags()

""" Change <leader> to ,
let mapleader = ','

""" Bind W to w (typo)
command! W :w

""" Source man.vim for :Man command
source /usr/share/vim/vimcurrent/ftplugin/man.vim

""" Colorscheme wombat
colorscheme default

""" Save tmp and swp files to ~/.vim/tmp
set backupdir=~/.vim/tmp
set directory=~/.vim/tmp

""" Set hidden so unsaved changes can be hidden
set hidden

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
set statusline=%<%n:%f\ %y[%{&ff}]%r%m%=%-19(%3l,%02c%03V%)%7(%P%)\ [%LL]\ %{fugitive#statusline()}\ [%<%1.20{getcwd()}]

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

""" Source file in buffer
nmap <leader>S :source %<CR>

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
set tabstop=2 shiftwidth=2 softtabstop=2 noexpandtab

""" Indention
set autoindent smartindent

""" Spell checking
set nospell spelllang=de_de,en_us
nmap <leader>s :set spell!<CR>

""" Searching
set ignorecase
set smartcase
set incsearch
set hlsearch

""" Toggle highlighting
nmap <leader>h :set hlsearch!<CR>

""" Toggle paste mode
set pastetoggle=<F2>

""" Folding
set foldmethod=marker
set foldlevel=99
nnoremap <space> za
vnoremap <space> zf

""" Matching
set showmatch
set matchpairs+=<:>

""" Completion
set completeopt=menuone,longest,preview

""" Open cmus
map <leader>m :silent !cmus<CR>:redraw!<CR>

""" Open urls in buffer with urlview
nnoremap <leader>O :silent !urlview %<CR>:redraw!<CR>

""" SnipMate: goto ~/.vim/snippets directory
nmap <leader>S :tabe ~/.vim/snippets<CR>

""" SnipMate: reload all snippets after editing
au BufWritePost *.snippets call ReloadAllSnippets()

""" tComment: remap tcomment command
map <leader>c <c-_><c-_>

""" supertab: remap supertab from <tab> <c-space>
" let g:SuperTabMappingForward = '<c-space>'
" let g:SuperTabMappingBackward = '<s-c-space>'
let g:SuperTabMappingForward = '<nul>'
let g:SuperTabMappingBackward = '<s-nul>'
let g:SuperTabDefaultCompletionType = "context"

""" pep8: map pep8 <F8>
let g:pep8_map='<F8>'

""" pyflakes: disable quickfix for pyflakes
let g:pyflakes_use_quickfix = 0

""" set foldlevel und foldcolumn for vimoutliner documents
autocmd BufRead *.otl setlocal foldlevel=0 foldcolumn=5

""" set makeprg for .Xresources
autocmd BufRead .Xresources setlocal makeprg=xrdb\ ~/.Xresources expandtab

""" set spelling for mails
autocmd FileType mail set spell

""" TaskList: map tasklist to <leader>td
map <leader>td <Plug>TaskList

""" Command-T: remap file search to <leader>f
nnoremap <silent> <leader>f :CommandT<CR>

nmap <leader>a <Esc>:Ack!
let g:ackprg="ack-grep -H --nocolor --nogroup --column"

""" TODO: document keybindings in README

""" F-Keys
""" Gundo: toogle gundo view
nnoremap <F4> :GundoToggle<CR>

""" NERDTree: toogle nerdtree
nnoremap <F3> :NERDTreeToggle<CR>

""" Tagbar: toogle tagbar with <F5>
nmap <F5> :TagbarToggle<CR>

""" Bind make to <F12>
nmap <F12> :make<CR>

""" awesome rc.lua testing
au BufRead *awesome/rc.lua setlocal makeprg=awesome\ -k

au BufRead *.md setlocal makeprg=markdown\ %\ \\\|\ lynx\ -stdin\ -dump

""" Utl settings
noremap <leader>o :Utl<CR>
let g:utl_cfg_hdl_mt_generic = 'silent execute "!xdg-open %p &> /dev/null" | redraw!'
let g:utl_cfg_hdl_scm_http_system = 'silent execute "!xdg-open \"%u\" &> /dev/null" | redraw!'
let g:utl_cfg_hdl_scm_mailto = '!terminator -e "mutt %u"'

""" Autohandle compress files
augroup gzip
	autocmd!
	autocmd BufReadPre,FileReadPre     *.gz,*.Z,*.bz2 set bin
	autocmd BufReadPost,FileReadPost   *.gz,*.Z '[,']!gunzip
	autocmd BufReadPost,FileReadPost   *.bz2 '[,']!bunzip2
	autocmd BufReadPost,FileReadPost   *.gz,*.Z,*.bz2 set nobin
	autocmd BufReadPost,FileReadPost   *.gz,*.Z,*.bz2 execute ":doautocmd BufReadPost " . expand("%:r")
	autocmd BufWritePost,FileWritePost *.gz,*.Z,*.bz2 !mv <afile> <afile>:r
	autocmd BufWritePost,FileWritePost *.gz !gzip <afile>:r
	autocmd BufWritePost,FileWritePost *.bz2 !bzip2 <afile>:r
	autocmd BufWritePost,FileWritePost *.Z !compress -f <afile>:r
	autocmd FileAppendPre              *.gz,*.Z !gunzip <afile>
	autocmd FileAppendPre              *.bz2 !bunzip2 <afile>
	autocmd FileAppendPre              *.gz,*.Z,*.bz2 !mv <afile>:r <afile>
	autocmd FileAppendPost             *.gz,*.Z,*.bz2 !mv <afile> <afile>:r
	autocmd FileAppendPost             *.gz !gzip <afile>:r
	autocmd FileAppendPost             *.bz2 !bzip2 <afile>:r
	autocmd FileAppendPost             *.Z !compress -f <afile>:r
augroup END
