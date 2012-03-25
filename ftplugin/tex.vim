let b:tex_flavor = 'pdflatex'
" Comment out to use Makefile
let b:tex_ignore_makefile = 1
compiler tex
nmap <F12> :make master.tex<CR>
