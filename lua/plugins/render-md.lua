return {
	"MeanderingProgrammer/render-markdown.nvim",
	lazy = false,
	dependencies = {
		"nvim-treesitter/nvim-treesitter",
		"nvim-tree/nvim-web-devicons",
	},
	opts = {
		enabled = true,

		render_modes = { "n", "c", "t" },

		anti_conceal = {
			enabled = true,
			ignore = {
				code_background = true,
				sign = true,
			},
		},

		checkbox = {
			unchecked = {
				icon = "☐ ",
				highlight = "RenderMarkdownUnchecked",
			},
			checked = {
				icon = "☑ ",
				highlight = "RenderMarkdownChecked",
			},
			custom = {
				{ raw = "-", rendered = "☒ ", highlight = "RenderMarkdownCancelled" },
				{ raw = ">", rendered = "◉ ", highlight = "RenderMarkdownPending" },
			},
		},

		heading = {
			enabled = true,
			icons = { "󰲡 ", "󰲣 ", "󰲥 ", "󰲧 ", "󰲩 ", "󰲫 " },
			position = "overlay",
			width = "full",
			backgrounds = {
				"RenderMarkdownH1Bg",
				"RenderMarkdownH2Bg",
				"RenderMarkdownH3Bg",
				"RenderMarkdownH4Bg",
				"RenderMarkdownH5Bg",
				"RenderMarkdownH6Bg",
			},
		},

		code = {
			enabled = true,
			sign = true,
			style = "language",
			width = "full",
			left_pad = 1,
			right_pad = 1,
		},

		bullet = {
			enabled = true,
			icons = { "●", "○", "◆", "◇" },
		},

		link = {
			enabled = true,
			icon = "󰌹 ",
			highlight = "RenderMarkdownLink",
		},

		latex = {
			enabled = true,
			converter = "latex2text",
			highlight = "RenderMarkdownMath",
		},
	},
	keys = {
		{ "<leader>rmr", "<cmd>RenderMarkdown toggle<CR>", desc = "Toggle Markdown rendering" },
		{ "<leader>rmR", "<cmd>RenderMarkdown enable<CR>", desc = "Enable rendering" },
		{ "<leader>rmD", "<cmd>RenderMarkdown disable<CR>", desc = "Disable rendering" },
		{ "<leader>rmd", "<cmd>RenderMarkdown debug<CR>", desc = "Markdown debug info" },
	},
}
