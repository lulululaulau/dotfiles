vim.cmd("syntax enable")

vim.g.vimtex_indent_on_ampersands = 0
vim.g.vimtex_view_method = 'skim'
vim.g.vimtex_compiler_method = 'latexmk'
vim.g.vimtex_quick_fix_open_on_warning = 0

vim.g.vimtex_quickfix_ignore_filters = {
  'Underfull \\\\hbox',
  'Overfull \\\\hbox',
  'You got a bad break'
}

local function texFocusVim()
  vim.defer_fn(function()
    vim.cmd('silent execute "!open -a iTerm"')
    vim.cmd('redraw!')
  end, 200)
end

local group = vim.api.nvim_create_augroup("vimtex_event_focus", {
  clear = true
})

vim.api.nvim_create_autocmd("User", {
  group = group,
  pattern = "VimtexEventViewReverse",
  callback = texFocusVim
})

vim.api.nvim_create_autocmd("User", {
  group = group,
  pattern = "VimtexEventView",
  callback = texFocusVim
})

