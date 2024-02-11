local on_attach = require("plugins.configs.lspconfig").on_attach
local capabilities = require("plugins.configs.lspconfig").capabilities

local lspconfig = require "lspconfig"

-- if you just want default config for the servers then put them in a table
local servers = { "html", "cssls", "tsserver", "clangd", "bashls", "pyright" }

for _, lsp in ipairs(servers) do
  if lsp == "bashls" then
    lspconfig[lsp].setup {
      filetypes = {"sh", "zsh"},
      on_attach = on_attach,
      capabilities = capabilities,
    }
  else
    lspconfig[lsp].setup {
      on_attach = on_attach,
      capabilities = capabilities,
    }
  end
end

-- 
-- lspconfig.pyright.setup { blabla}
