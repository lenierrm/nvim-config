-- phpactor generalmente se instala manualmente
vim.lsp.config('phpactor', {
  init_options = {
    ["language_server_phpstan.enabled"] = false,
    ["language_server_psalm.enabled"] = false
  },
  filetypes = { "php" }
})
