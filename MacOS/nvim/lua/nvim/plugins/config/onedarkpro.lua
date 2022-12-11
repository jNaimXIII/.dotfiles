require("onedarkpro").setup({
	dark_theme = "onedark_vivid",
	light_theme = "onelight",
	colors = {},
	highlights = {
		-- CursorLine = { fg = "NONE", bg = "NONE" },
		CursorLineNr = { fg = "NONE", bg = "NONE" },
		TabLineSel = { fg = "NONE", bg = "NONE" },
	},
	styles = {
		comments = "italic",
		keywords = "bold",
		constants = "bold",
		functions = "bold",
		operators = "bold",
		conditionals = "italic",
	},
	options = {
		transparency = true,
		terminal_colors = true,
	},
})

vim.cmd("colorscheme onedarkpro")
