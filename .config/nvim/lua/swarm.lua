vim.api.nvim_create_autocmd({"BufRead", "BufNewFile"}, {
  pattern = "*.sw",
  command = "setfiletype swarm"
})
