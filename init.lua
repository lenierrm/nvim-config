local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
	vim.fn.system({
		"git",
		"clone",
		"--filter=blob:none",
		"https://github.com/folke/lazy.nvim.git",
		"--branch=stable", -- latest stable release
		lazypath,
	})
end
vim.opt.rtp:prepend(lazypath)

require("vim-options")
require("lazy").setup({
	spec = "plugins",
	git = {
		timeout = 600, -- 10 min (max)
		cooldown = 10, -- wait 10s between operations
		filter = true, -- Parcial clone (faster)
		retry = 3, -- Retray 3 times if fails
	},
	concurrency = 1, -- Only 1 operation at time
	install = {
		missing = true,
		retry = 3,
	},
	performance = {
		cache = {
			enabled = true, -- Dependencies caching
		},
	},
})

-- Cargar configuración LSP
require("lsp.init")

vim.keymap.set("n", "<leader>e", vim.diagnostic.open_float, { noremap = true, silent = true })

vim.o.autoread = true
vim.api.nvim_create_autocmd({ "FocusGained", "BufEnter", "CursorHold", "CursorHoldI", "FocusGained" }, {
	command = "if mode() != 'c' | checktime | endif",
	pattern = { "*" },
})

vim.api.nvim_create_autocmd({ "FileChangedShellPost" }, {
	command = 'echohl WarningMsg | echo "File changed on disk. Buffer reloaded." | echohl None',
	pattern = { "*" },
})
