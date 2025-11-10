vim.lsp.config('cssls', {
  settings = {
    css = {
      validate = true,
      lint = {
        unknownAtRules = "ignore"
      }
    },
    scss = {
      validate = true
    },
    less = {
      validate = true
    }
  },
  filetypes = { "css", "scss", "less" }
})
