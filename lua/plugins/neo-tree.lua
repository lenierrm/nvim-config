return {
	"nvim-neo-tree/neo-tree.nvim",
	opts = {
		window = {
			width = 24,
		},
		filesystem = {
			filtered_items = {
				visible = true,
				show_hidden_count = true,
				hide_dotfiles = false,
				hide_gitignored = false,
				hide_by_name = {
					".git",
					".DS_Store",
					"thumbs.db",
				},
				never_show = {},
			},
			commands = {
				delete = function(state)
					local path = state.tree:get_node().path
					local escaped_path = vim.fn.shellescape(path)
					--Use the trash-cli utility command
					vim.cmd("silent !trash-put " .. escaped_path)
					require("neo-tree.sources.manager").refresh(state.name)
				end,
			},
		},
	},
	branch = "v3.x",
	dependencies = {
		"nvim-lua/plenary.nvim",
		"nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
		"MunifTanjim/nui.nvim",
		-- {"3rd/image.nvim", opts = {}}, -- Optional image support in preview window: See `# Preview Mode` for more information
	},
	config = function(_, opts)
		require("neo-tree").setup(opts)
		vim.keymap.set("n", "<C-n>", ":Neotree filesystem reveal left<CR>", {})
	end,
}
