" TODO I don't really like this setup
" I want to be able to have advanced spell checking for code
" e.g., somehow be able to spell check function names, etc,
" but also be able to use abbreviations and shorthands without the annoying red line
autocmd BufRead,BufNewFile *.tex,*.typ,*.txt,*.md,*.bib,neomutt* setlocal spell spelllang=en_us
" the following still activates for terminals??
" autocmd BufNew,BufEnter * if empty(expand('%')) | setlocal spell spelllang=en_us | endif
nnoremap <leader>s 1z=e
