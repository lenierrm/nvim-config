return {
	"nvimtools/none-ls.nvim",
	config = function()
		local null_ls = require("null-ls")
		null_ls.setup({
			sources = {
				null_ls.builtins.formatting.stylua,
				null_ls.builtins.formatting.prettier.with({
					filetypes = { "javascript", "typescript", "css", "html", "json", "yaml", "markdown" },
				}),
				null_ls.builtins.diagnostics.stylelint,
				null_ls.builtins.diagnostics.phpcs.with({
					command = "/home/lenier/.config/composer/vendor/bin/phpcs",
					extra_args = { "--standard=/home/lenier/.config/nvim/custom-ruleset.xml" },
				}),
				null_ls.builtins.formatting.phpcbf.with({
					command = "/home/lenier/.config/composer/vendor/bin/phpcbf",
					extra_args = { "--standard=/home/lenier/.config/nvim/custom-ruleset.xml" },
					filetypes = { "php" },
				}),
			},
		})
		vim.keymap.set("n", "<leader>gf", vim.lsp.buf.format, {})
	end,
}
