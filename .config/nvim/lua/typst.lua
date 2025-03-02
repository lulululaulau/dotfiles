require'lspconfig'.tinymist.setup{
  capabilities=require('cmp_nvim_lsp').default_capabilities(),
  settings = {
    exportPdf = "onType"
  }
}

vim.api.nvim_create_user_command('TypstPreview', 'lua require("typst-preview").preview()', {})

require("mason").setup()
