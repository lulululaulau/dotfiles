autocmd BufWritePost *.asy silent! !asy -o $(echo "%:p" | sed -e "s/\.asy$//") "%:p"

