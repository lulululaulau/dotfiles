" https://github.com/junegunn/vim-plug
" :PlugInstall
" :PlugClean
call plug#begin('~/.local/share/nvim/plugged')
" follow latest release and install jsregexp.
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
Plug 'williamboman/mason-lspconfig.nvim'
Plug 'williamboman/mason.nvim'
Plug 'neovim/nvim-lspconfig'
Plug 'hiphish/rainbow-delimiters.nvim'
Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'hrsh7th/cmp-buffer'
Plug 'hrsh7th/cmp-path'
Plug 'hrsh7th/cmp-cmdline'
Plug 'hrsh7th/nvim-cmp'
Plug 'navarasu/onedark.nvim'
Plug 'L3MON4D3/LuaSnip', {'tag': 'v2.*', 'do': 'make install_jsregexp'} " Replace <CurrentMajor> by the latest released major (first number of latest release)
Plug 'saadparwaiz1/cmp_luasnip'
Plug 'lervag/vimtex'
" Plug 'kaarmu/typst.vim'
Plug 'niuiic/core.nvim'
" Plug 'niuiic/typst-preview.nvim'
Plug 'chomosuke/typst-preview.nvim', {'tag': 'v1.*'}
Plug 'mfussenegger/nvim-lint'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim', { 'tag' : '0.1.8' }
Plug 'akinsho/toggleterm.nvim', {'tag' : '*'}
Plug 'mcchrish/nnn.vim'
call plug#end()

filetype plugin on
