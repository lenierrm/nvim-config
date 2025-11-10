 vim.lsp.config('emmet_ls', {
  filetypes = {
    "css",
    "html",
    "javascript",
    "javascriptreact",
    "less",
    "sass",
    "scss",
    "typescriptreact",
    "vue",
    "php"
  },
  init_options = {
    html = {
      options = {
        ["bem.enabled"] = true,
        ["output.selfClosingStyle"] = "xhtml",
      },
    },
    css = {
      options = {
        ["bem.enabled"] = true,
      },
    },
  },
})
