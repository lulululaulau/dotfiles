require('neoclip').setup({

})

vim.keymap.set('n', '<leader>fp', function ()
  vim.cmd("Telescope neoclip")
end)


