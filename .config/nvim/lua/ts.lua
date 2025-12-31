vim.api.nvim_create_autocmd('FileType', {
  pattern = {
    'bibtex',
    'c',
    'cpp',
    'java',
    'latex',
    'lua',
    'muttrc',
    'python',
    'typst',
    'vim'
  },
  callback = function()
    -- syntax highlighting, provided by Neovim
    vim.treesitter.start()
    -- folds, provided by Neovim
    vim.wo.foldexpr = 'v:lua.vim.treesitter.foldexpr()'
    vim.wo.foldmethod = 'expr'
    -- indentation, provided by nvim-treesitter
    vim.bo.indentexpr = "v:lua.require'nvim-treesitter'.indentexpr()"
  end,
})

vim.opt.foldlevelstart = 99


