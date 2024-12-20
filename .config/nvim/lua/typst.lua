require'lspconfig'.tinymist.setup{
  settings = {
    exportPdf = "onType"
  }
}

vim.api.nvim_create_user_command('TypstPreview', 'lua require("typst-preview").preview()', {})

require("mason").setup()
