return {
	"epwalsh/obsidian.nvim",
	version = "*", -- recommended, use latest release instead of latest commit
	lazy = true,
	ft = "markdown",

	vim.keymap.set("n", "<leader>olb", ":ObsidianBacklinks<CR>", { desc = "Obsidian Backlinks" }),
	vim.keymap.set("n", "<leader>on", ":ObsidianNew<CR>", { desc = "Obsidian new" }),
	vim.keymap.set("v", "<leader>oen", ":ObsidianExtractNote<CR>", { desc = "Obsidian Extract Note" }),
	vim.keymap.set("n", "<leader>ols", ":ObsidianLinks<CR>", { desc = "Obsidian Links" }),
	vim.keymap.set("n", "<leader>opi", ":ObsidianPasteImg<CR>", { desc = "Obsidian Paste Img" }),
	vim.keymap.set("n", "<leader>otc", ":ObsidianTOC<CR>", { desc = "Obsidian TOC" }),
	vim.keymap.set("n", "<leader>ocb", ":ObsidianToggleCheckbox<CR>", { desc = "Obsidian Toggle Checkbox" }),
	vim.keymap.set("n", "<leader>oc", ":ObsidianCheck<CR>", { desc = "Obsidian Check" }),
	vim.keymap.set("n", "<leader>ofl", ":ObsidianFollowLink<CR>", { desc = "Obsidian Follow Link" }),
	vim.keymap.set("n", "<leader>oqs", ":ObsidianQuickSwitch<CR>", { desc = "Obsidian Quick Switch" }),
	vim.keymap.set("n", "<leader>otg", ":ObsidianTags<CR>", { desc = "Obsidian Tags" }),
	vim.keymap.set("n", "<leader>otw", ":ObsidianTomorrow<CR>", { desc = "Obsidian Tomorrow" }),
	vim.keymap.set("n", "<leader>ods", ":ObsidianDailies<CR>", { desc = "Obsidian Dailies" }),
	vim.keymap.set("v", "<leader>ol", ":ObsidianLink<CR>", { desc = "Obsidian Link" }),
	vim.keymap.set("n", "<leader>onf", ":ObsidianNewFromTemplate<CR>", { desc = "Obsidian New From Template" }),
	vim.keymap.set("n", "<leader>or", ":ObsidianRename<CR>", { desc = "Obsidian Rename" }),
	vim.keymap.set("n", "<leader>otp", ":ObsidianTemplate<CR>", { desc = "Obsidian Template" }),
	vim.keymap.set("n", "<leader>ow", ":ObsidianWorkspace<CR>", { desc = "Obsidian Workspace" }),
	vim.keymap.set("n", "<leader>od", ":ObsidianDebug<CR>", { desc = "Obsidian Debug" }),
	vim.keymap.set("v", "<leader>oln", ":ObsidianLinkNew<CR>", { desc = "Obsidian Link New" }),
	vim.keymap.set("n", "<leader>os", ":ObsidianSearch<CR>", { desc = "Obsidian Search" }),
	vim.keymap.set("n", "<leader>oty", ":ObsidianToday<CR>", { desc = "Obsidian Today" }),
	vim.keymap.set("n", "<leader>oy", ":ObsidianYesterday<CR>", { desc = "Obsidian Yesterday" }),
	-- Replace the above line with this if you only want to load obsidian.nvim for markdown files in your vault:
	-- event = {
	--   -- If you want to use the home shortcut '~' here you need to call 'vim.fn.expand'.
	--   -- E.g. "BufReadPre " .. vim.fn.expand "~" .. "/my-vault/*.md"
	--   -- refer to `:h file-pattern` for more examples
	--   "BufReadPre path/to/my-vault/*.md",
	--   "BufNewFile path/to/my-vault/*.md",
	-- },
	dependencies = {
		-- Required.
		"nvim-lua/plenary.nvim",
		"OXY2DEV/markview.nvim",

		-- see below for full list of optional dependencies 👇
	},
	opts = {
		legacy_commands = false,
		workspaces = {
			{
				name = "personal",
				path = "~/Documents/Obsidian Vaults/Personal",
			},
			{
				name = "work",
				path = "~/Documents/Obsidian Vaults/Work",
			},
		},

		-- see below for full list of options 👇
	},
}
