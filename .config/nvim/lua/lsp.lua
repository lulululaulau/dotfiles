local capabilities = require('cmp_nvim_lsp').default_capabilities()

require'lspconfig'.clangd.setup {
  capabilities=capabilities,
  on_attach = function(client, bufnr)
    if vim.bo[bufnr].filetype == "robotc" then
        client.stop() -- Prevent clangd from activating
        -- vim.diagnostic.config({
        --   virtual_text = false,
        --   signs = false,
        --   underline = false
        -- })
    end
  end
}

require'lspconfig'.texlab.setup {
  capabilities = capabilities
}

