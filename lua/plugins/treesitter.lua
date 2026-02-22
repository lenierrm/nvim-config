return {
	"nvim-treesitter/nvim-treesitter",
	build = ":TSUpdate",
	config = function()
		local config = require("nvim-treesitter.configs")
		config.setup({
			ensure_installed = {
				"javascript",
				"php",
				"css",
				"markdown",
				"markdown_inline", --"json", "sql", "lua"
				"html",
			},
			highlight = {
				enable = true,
			},
			indent = { enable = true },
		})
	end,
}
