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

vim.env.JAVA_HOME = "/opt/homebrew/Cellar/openjdk@21/21.0.9/libexec/openjdk.jdk/Contents/Home/"
vim.lsp.config('jdtls', {
  -- cmd = {
  --   "jdtls",
  --   "--java-executable",
  --   "/opt/homebrew/Cellar/openjdk@21/21.0.9/libexec/openjdk.jdk/Contents/Home/bin/java",
  -- },
  settings = {
    java = {
      home = "/opt/homebrew/Cellar/openjdk@21/21.0.9/libexec/openjdk.jdk/Contents/Home/",
      configuration= {
        runtimes = {
          {
            name = "JavaSE-21",
            path = "/opt/homebrew/opt/openjdk@21/"
          },
          {
            name = "JavaSE-17",
            path = "/Library/Java/JavaVirtualMachines/temurin-17.jdk/Contents/Home/"
          }
        }
      }
    },
  },
})

vim.lsp.config('lua_ls', {
  on_init = function(client)
    if client.workspace_folders then
      local path = client.workspace_folders[1].name
      if
        path ~= vim.fn.stdpath('config')
        and (vim.uv.fs_stat(path .. '/.luarc.json') or vim.uv.fs_stat(path .. '/.luarc.jsonc'))
      then
        return
      end
    end

    client.config.settings.Lua = vim.tbl_deep_extend('force', client.config.settings.Lua, {
      runtime = {
        -- Tell the language server which version of Lua you're using (most
        -- likely LuaJIT in the case of Neovim)
        version = 'LuaJIT',
        -- Tell the language server how to find Lua modules same way as Neovim
        -- (see `:h lua-module-load`)
        path = {
          'lua/?.lua',
          'lua/?/init.lua',
        },
      },
      -- Make the server aware of Neovim runtime files
      workspace = {
        checkThirdParty = false,
        library = {
          vim.env.VIMRUNTIME
          -- Depending on the usage, you might want to add additional paths
          -- here.
          -- '${3rd}/luv/library'
          -- '${3rd}/busted/library'
        }
        -- Or pull in all of 'runtimepath'.
        -- NOTE: this is a lot slower and will cause issues when working on
        -- your own configuration.
        -- See https://github.com/neovim/nvim-lspconfig/issues/3189
        -- library = {
        --   vim.api.nvim_get_runtime_file('', true),
        -- }
      }
    })
  end,
  settings = {
    Lua = {}
  }
})

vim.api.nvim_create_autocmd("LspAttach", {
  callback = function(args)
    local client = vim.lsp.get_client_by_id(args.data.client_id)
    local bufnr = args.buf
    local opts = {buffer = bufnr, remap = false}

    vim.keymap.set("n", "gd", vim.lsp.buf.definition, opts)
    vim.keymap.set("n", "K", vim.lsp.buf.hover, opts)
    vim.keymap.set("n", "gr", function() require("telescope.builtin").lsp_references() end, opts)

  end
})

vim.diagnostic.config({virtual_text = true})
vim.lsp.log.set_level("error")

vim.lsp.enable('clangd')
vim.lsp.enable('texlab')
vim.lsp.enable('rust_analyzer')
vim.lsp.enable('basedpyright')
vim.lsp.enable('tinymist')
vim.lsp.enable('jdtls')
vim.lsp.enable('lua_ls')



