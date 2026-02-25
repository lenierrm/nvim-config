return {
	"OXY2DEV/markview.nvim",
	lazy = false,
	dependencies = {
		"nvim-treesitter/nvim-treesitter",
		"nvim-tree/nvim-web-devicons",
	},
	config = function()
		vim.opt.conceallevel = 2
		vim.opt.concealcursor = "nc"
		require("markview").setup({
			initial_state = true,
			-- Hybrid mode: preview while edit
			hybrid_modes = { "n" }, -- Activate in normal mode

			-- Temas
			highlight_groups = "dynamic",

			-- Split configuration (optional)
			split_conf = {
				position = "right", -- "left", "right", "top", "bottom"
				size = 50, -- column percentage or number of columns
			},
			-- What element are rendered
			code_blocks = {
				enable = true,
				style = "language",
			},
			headings = {
				enable = true,
				style = "icon",
			},
			checkboxes = {
				enable = true,
				custom_states = {
					[" "] = { text = "⬜", hl = "MarkviewCheckboxUnchecked" },
					["x"] = { text = "✅", hl = "MarkviewCheckboxChecked" },
					["-"] = { text = "❌", hl = "MarkviewCheckboxCancelled" },
					[">"] = { text = "⏳", hl = "MarkviewCheckboxPending" },
				},
			},
			list_items = {
				enable = true,
				-- Usar iconos de lista (esto se combinará con el checkbox vacío)
				marker_minus = { "●" }, -- Para checkboxes con guión
				marker_plus = { "○" }, -- Para listas con +
				marker_star = { "◆" }, -- Para listas con *
			},
			latex = {
				enable = false,
			},
			-- Enable Obsidian-style wiki links
			wiki_links = {
				enable = true,
				conceal = true, -- Hides the brackets
			},
		})
		vim.keymap.set("n", "<leader>mvt", ":Markview toggle<CR>", { desc = "Toggle Markview preview" })
		vim.keymap.set("n", "<leader>mvs", ":Markview splitToggle<CR>", { desc = "Toggle Markview split view" })
		vim.keymap.set("n", "<leader>mvh", ":Markview hybridToggle<CR>", { desc = "Toggle hybrid mode" })
	end,
}
