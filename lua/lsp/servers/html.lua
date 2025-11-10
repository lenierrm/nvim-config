vim.lsp.config('html', {
  settings = {
    html = {
      suggest = {
        html5 = true
      },
      format = {
        templating = true,
        wrapLineLength = 120,
        indentInnerHtml = true
      }
    }
  },
  filetypes = { "html", "htmldjango" }
})
