local capabilities = require("lsp.capabilities")
local handlers = require("lsp.handlers")

-- Configuración global para todos los LSP
vim.lsp.config('*', {
  on_attach = handlers.on_attach,
  capabilities = capabilities.get_capabilities(),
})

-- Cargar configuraciones específicas de servidores
require("lsp.servers.cssls")
require("lsp.servers.html")
require("lsp.servers.phpactor")
require("lsp.servers.emmet_ls")

-- Configuración para servidores que vienen con mason-lspconfig
local mason_servers = {
  "lua_ls",
  "cssls",
  "html",
  "emmet_ls",
  -- Agrega otros servidores que instales via Mason
}

for _, server in ipairs(mason_servers) do
  vim.lsp.enable(server)
end

-- Configuración para servidores que NO están en Mason (como phpactor)
vim.lsp.enable('phpactor')
