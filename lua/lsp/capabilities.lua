local M = {}

function M.get_capabilities()
  local capabilities = vim.lsp.protocol.make_client_capabilities()

  -- Para nvim-cmp
  local cmp_ok, cmp_nvim_lsp = pcall(require, "cmp_nvim_lsp")
  if cmp_ok then
    capabilities = cmp_nvim_lsp.default_capabilities(capabilities)
  end

  -- Capacidades adicionales
  capabilities.textDocument.foldingRange = {
    dynamicRegistration = false,
    lineFoldingOnly = true
  }

  return capabilities
end

return M
