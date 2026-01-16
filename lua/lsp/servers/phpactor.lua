-- phpactor generalmente se instala manualmente

-- Smart detection then static assignment
local wp_root = require('lspconfig.util').root_pattern('wp-config.php')(vim.fn.getcwd()) or vim.fn.getcwd()

vim.lsp.config("phpactor", {
	init_options = {
		["language_server_phpstan.enabled"] = false,
		["language_server_psalm.enabled"] = false,
	},
	filetypes = { "php" },
	root_dir = wp_root,
})
