local vim = vim
local Plug = vim.fn['plug#']

vim.call('plug#begin')
Plug('nvim-treesitter/nvim-treesitter', {
  ['do'] = function()
    vim.fn['TSUpdate']()
  end
})
Plug('williamboman/mason-lspconfig.nvim')
Plug('williamboman/mason.nvim')
Plug('neovim/nvim-lspconfig')
Plug('hiphish/rainbow-delimiters.nvim')
Plug('hrsh7th/cmp-nvim-lsp')
Plug('hrsh7th/cmp-buffer')
Plug('hrsh7th/cmp-path')
Plug('hrsh7th/cmp-cmdline')
Plug('hrsh7th/nvim-cmp')
Plug('navarasu/onedark.nvim')
Plug('dylanaraps/wal.vim')
Plug('L3MON4D3/LuaSnip', {
  -- 'tag': 'v2.*', 'do': 'make install_jsregexp'
  ['tag'] = 'v2.*',
  ['do'] = 'make install_jsregexp'
})
Plug('saadparwaiz1/cmp_luasnip')
Plug('lervag/vimtex')
Plug('niuiic/core.nvim')
Plug('mfussenegger/nvim-lint')
Plug('nvim-lua/plenary.nvim')
Plug('nvim-telescope/telescope.nvim', {
  ['tag'] = 'v0.2.0'
})
Plug('akinsho/toggleterm.nvim', {
  ['tag'] = '*'
})
Plug('mcchrish/nnn.vim')
Plug('mfussenegger/nvim-jdtls')
Plug('mbbill/undotree')
Plug('f-person/git-blame.nvim')
Plug('windwp/nvim-autopairs')
Plug('tpope/vim-fugitive')
Plug('girishji/bufline.vim')
Plug('lewis6991/gitsigns.nvim')
Plug('petRUShka/vim-sage')
Plug('ryanmsnyder/toggleterm-manager.nvim')
Plug('AckslD/nvim-neoclip.lua')


vim.call('plug#end')

