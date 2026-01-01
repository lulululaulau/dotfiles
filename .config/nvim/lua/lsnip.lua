local ls = require('luasnip')

vim.keymap.set({"i"}, "<Tab>", function()
  if ls.expand_or_jumpable() then
    return "<Plug>luasnip-expand-or-jump"
  else
    return "<Tab>"
  end
end, {silent = true, remap = true, expr = true})
vim.keymap.set({"s"}, "<Tab>", function()
  if ls.jumpable(1) then
    return "<Plug>luasnip-jump-next"
  else
    return "<Tab>"
  end
end, {silent = true, remap = true, expr = true})
vim.keymap.set({"i", "s"}, "<S-Tab>", function()
  if ls.jumpable(-1) then
    return "<Plug>luasnip-jump-prev"
  else
    return "<S-Tab>"
  end
end, {silent = true, remap = true, expr = true})

-- vim.keymap.set({"i"}, "<Tab>", function()
--   if ls.expand_or_jumpable() then
--     ls.expand_or_jump()
--   else
--     return "<Tab>"
--   end
-- end, {silent = true, remap = true})


require("luasnip.loaders.from_lua").load({paths = "~/.config/nvim/Luasnip"})

ls.config.set_config({
  enable_autosnippets = true,
  store_selection_keys = "<Tab>",
  update_events = "TextChanged,TextChangedI"
})
