local M = {}

-- Función on_attach común para todos los LSP
function M.on_attach(client, bufnr)
  -- Mapeos locales para el buffer actual
  local bufopts = { noremap = true, silent = true, buffer = bufnr }

  -- Navegación
  vim.keymap.set('n', 'gd', vim.lsp.buf.definition, bufopts)
  vim.keymap.set('n', 'gD', vim.lsp.buf.declaration, bufopts)
  vim.keymap.set('n', 'gr', vim.lsp.buf.references, bufopts)
  vim.keymap.set('n', 'gi', vim.lsp.buf.implementation, bufopts)
  vim.keymap.set('n', 'K', vim.lsp.buf.hover, bufopts)
  vim.keymap.set('n', '<C-k>', vim.lsp.buf.signature_help, bufopts)

  -- Acciones de código
  vim.keymap.set('n', '<leader>rn', vim.lsp.buf.rename, bufopts)
  vim.keymap.set('n', '<leader>ca', vim.lsp.buf.code_action, bufopts)

  -- Formateo
  vim.keymap.set('n', '<leader>f', function()
    vim.lsp.buf.format({ async = true })
  end, bufopts)

  -- Formateo automático al guardar (opcional)
  if client.supports_method("textDocument/formatting") then
    vim.api.nvim_create_autocmd("BufWritePre", {
      group = vim.api.nvim_create_augroup("LspFormatting", { clear = true }),
      buffer = bufnr,
      callback = function()
        vim.lsp.buf.format({ bufnr = bufnr })
      end
    })
  end

  -- Highlight de símbolos bajo el cursor
  if client.supports_method("textDocument/documentHighlight") then
    vim.api.nvim_create_autocmd({ "CursorHold", "CursorHoldI" }, {
      group = vim.api.nvim_create_augroup("LspDocumentHighlight", { clear = true }),
      buffer = bufnr,
      callback = vim.lsp.buf.document_highlight,
    })

    vim.api.nvim_create_autocmd("CursorMoved", {
      group = vim.api.nvim_create_augroup("LspDocumentHighlightClear", { clear = true }),
      buffer = bufnr,
      callback = vim.lsp.buf.clear_references,
    })
  end
end

return M
