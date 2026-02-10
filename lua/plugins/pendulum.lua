return {
	"SunnyTamang/pendulum.nvim",
	config = function()
		require("pendulum").setup({
			lualine = true, --Enables displaying the timer in Lualine (if lualine installed)
		})
		--vim.keymap.set(
		--"n",
		--"timer",
		--":TimerStart<CR>",
		--{ desc = "Start the timer", callback = start_timer_with_prompt, noremap = true, silent = true }
		--)
		vim.keymap.set("n", "<leader>ts", ":TimerStop<CR>", { desc = "Stop the Timer" })
		vim.keymap.set("n", "<leader>tp", ":TimerPause<CR>", { desc = "Pause the Timer" })
		vim.keymap.set("n", "<leader>tr", ":TimerResume<CR>", { desc = "Resume the Timer" })
		vim.keymap.set("n", "<leader>tre", ":TimerRestart<CR>", { desc = "Restart  the Timer" })
		vim.keymap.set("n", "<leader>tn", ":TimerTemplate<CR>", { desc = "Select Timer Template" })
		vim.keymap.set("n", "<leader>sct", ":StartYourCustomTimer<CR>", { desc = "Start Your Custom Timer" })
	end,
}
