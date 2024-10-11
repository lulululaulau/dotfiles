require'lspconfig'.typst_lsp.setup{
  settings = {
    exportPdf = "onType"
  }
}

require("mason").setup()