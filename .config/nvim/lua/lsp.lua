local capabilities = require('cmp_nvim_lsp').default_capabilities()

vim.lsp.config('clangd', {
  capabilities=capabilities,
  on_attach = function(client, bufnr)
    if vim.bo[bufnr].filetype == "robotc" then
        client.stop() -- Prevent clangd from activating
    end
  end
})

vim.lsp.config('texlab',  {
  capabilities = capabilities
})

vim.lsp.config('rust_analyzer', {
  capabilities = capabilities,
  settings = {
    ['rust_analyzer'] = {
      diagnostics = {
        enable = false;
      }
    }
  }
})

vim.lsp.config('basedpyright', {
  capabilities = capabilities
})

vim.diagnostic.config({virtual_text = true})
vim.lsp.set_log_level("off")

vim.lsp.enable('clangd')
vim.lsp.enable('texlab')
vim.lsp.enable('rust_analyzer')
vim.lsp.enable('basedpyright')
vim.lsp.enable('tinymist')


