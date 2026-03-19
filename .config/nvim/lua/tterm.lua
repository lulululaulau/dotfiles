require("toggleterm").setup{
  size = 20,
  open_mapping = [[<leader>c]]
}

vim.keymap.set("n", "<leader>hc", function ()
  require("toggleterm").toggle(vim.v.count,0,"get_dir","horizontal")
end)

vim.keymap.set("n", "<leader>fc", function ()
  require("toggleterm").toggle(vim.v.count,0,"det_dir","float")
end)

require("toggleterm-manager").setup{

}

vim.keymap.set("n", "<leader>ft", function ()
  require("toggleterm-manager").open({
    preview = true
  })
end)
