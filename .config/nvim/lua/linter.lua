require('lint').linters_by_ft = {
  tex = {'chktex'},
}

vim.api.nvim_create_autocmd({ "BufRead", "BufWritePost" }, {
  callback = function()
    require("lint").try_lint()
  end,
})
