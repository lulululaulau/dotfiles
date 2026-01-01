vim.api.nvim_create_autocmd({"BufWritePost"}, {
  pattern = "*.asy",
  command = 'silent! !asy -o $(echo "%:p" | sed -e "s/\\.asy$//") "%:p"'
})
