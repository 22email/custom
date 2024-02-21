local base = require "plugins.configs.lspconfig"
local on_attach = base.on_attach
local capabilities = base.capabilities

local lspconfig = require "lspconfig"

lspconfig.clangd.setup {
  on_attach = function(client, bufnr)
    client.server_capabilities.signatureHelpProvider = false
    on_attach(client, bufnr)
  end,
  capabilities = {
    offsetEncoding = "utf-8",
  },
}

local omnisharp_exec = vim.fn.expand "~/.local/share/nvim/mason/packages/omnisharp-mono/run"

lspconfig.omnisharp.setup {
  cmd = { omnisharp_exec },
  filetypes = { "cs", "razor" },
  on_attach = function(client, bufnr)
    client.server_capabilities.signatureHelpProvider = false
    on_attach(client, bufnr)
  end,
  capabilities = capabilities,
}

lspconfig.gdscript.setup {
  on_attach = function(client, bufnr)
    client.server_capabilities.signatureHelpProvider = false
    on_attach(client, bufnr)
  end,
  capabilities = capabilities,
}

local servers = { "cssls", "marksman", "tsserver", "tailwindcss", "pyright" }

for _, lsp in ipairs(servers) do
  lspconfig[lsp].setup {
    on_attach = function(client, bufnr)
      client.server_capabilities.signatureHelpProvider = false
      on_attach(client, bufnr)
    end,
    capabilities = capabilities,
  }
end
