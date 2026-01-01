vim.api.nvim_create_autocmd({"BufRead", "BufNewFile"}, {
  pattern = {
    "*.tex",
    "*.typ",
    "*.txt",
    "*.md",
    "*.bib",
    "neomutt*"
  },
  command = "setlocal spell spelllang=en_us"
})

vim.keymap.set("n", "<leader>s", "1z=e")

