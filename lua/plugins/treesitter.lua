return {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    config = function()
        local config = require("nvim-treesitter.configs")
        config.setup({
            ensure_installed = {
              "javascript", "html", "php", "css", --"json", "sql", "lua"
            },
            highlight = { enable = true },
            indent = { enable = true },
        })
    end
} 
