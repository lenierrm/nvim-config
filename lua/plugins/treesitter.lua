return {
	"nvim-treesitter/nvim-treesitter",
	build = ":TSUpdate",
	dependencies = {
		"obsidian-nvim/obsidian.nvim",
		"OXY2DEV/markview.nvim",
	},
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
				-- Let markview.nvim handle markdown rendering
				disable = function(lang, buf)
					return lang == "markdown" or lang == "markdown_inline"
				end,
			},
			indent = { enable = true },
		})
	end,
}
