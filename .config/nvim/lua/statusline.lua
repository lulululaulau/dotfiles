require("bufline").setup({
  opts = {
    showbufnr = true,
    emphasize = '['
  }
})
Statusline = {}
Statusline.active = function()
  return table.concat { require('bufline').bufferstr(), "%r %=%=%l,%c  %P" }
end
Statusline.inactive = function()
  return " %F"
end

local aucmd_group = vim.api.nvim_create_augroup('StatuslineAutocmds', { clear = true })
vim.api.nvim_create_autocmd({ "WinEnter", "BufEnter", "BufAdd" }, {
  group = aucmd_group,
  pattern = "*",
  callback = function()
    vim.wo.statusline = "%!v:lua.Statusline.active()"
  end,
})
vim.api.nvim_create_autocmd({ "WinLeave", "BufLeave" }, {
  group = aucmd_group,
  pattern = "*",
  callback = function()
    vim.wo.statusline = "%!v:lua.Statusline.inactive()"
  end,
})
