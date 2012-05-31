let b:tex_flavor = 'pdflatex'
" Comment out to use Makefile
let b:tex_ignore_makefile = 1
compiler tex
nmap <F12> :make %<CR>
setlocal textwidth=100
setlocal nonumber
setlocal foldcolumn=3
