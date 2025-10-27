local capabilities = require('cmp_nvim_lsp').default_capabilities()

require'lspconfig'.clangd.setup {
  capabilities=capabilities,
  on_attach = function(client, bufnr)
    if vim.bo[bufnr].filetype == "robotc" then
        client.stop() -- Prevent clangd from activating
    end
  end
}

require'lspconfig'.texlab.setup {
  capabilities = capabilities
}

require'lspconfig'.rust_analyzer.setup{
  capabilities = capabilities,
  settings = {
    ['rust_analyzer'] = {
      diagnostics = {
        enable = false;
      }
    }
  }
}

require'lspconfig'.basedpyright.setup{
  capabilities = capabilities
}

vim.diagnostic.config({virtual_text = true})
vim.lsp.set_log_level("off")

