vim.opt.clipboard = ""
-- vim.opt.clipboard = "unnamedplus"
vim.opt.tabstop = 2
vim.opt.shiftwidth = 2

vim.opt.colorcolumn = "80,120"

lvim.format_on_save.enabled = true
-- lvim.format_on_save.enabled = false
lvim.transparent_window = true

lvim.leader = "space"
lvim.keys.normal_mode["<C-s>"] = ":w<cr>"
lvim.keys.normal_mode["<S-l>"] = ":BufferLineCycleNext<CR>"
lvim.keys.normal_mode["<S-h>"] = ":BufferLineCyclePrev<CR>"

lvim.builtin.treesitter.rainbow.enable = true
lvim.builtin.treesitter.autotag.enable = true

lvim.builtin.telescope.extensions.fzf.override_generic_sorter = false
lvim.builtin.telescope.extensions.fzf.override_file_sorter = false

lvim.builtin.bufferline.highlights = {
	fill = { bg = "NONE" },
	background = { bg = "NONE" },
	tab = { bg = "NONE" },
	tab_selected = { bg = "NONE" },
	tab_close = { bg = "NONE" },
	close_button = { bg = "NONE" },
	close_button_visible = { bg = "NONE" },
	close_button_selected = { bg = "NONE" },
	buffer_visible = { bg = "NONE" },
	buffer_selected = { bg = "NONE" },
	numbers = { bg = "NONE" },
	numbers_visible = { bg = "NONE" },
	numbers_selected = { bg = "NONE" },
	diagnostic = { bg = "NONE" },
	diagnostic_visible = { bg = "NONE" },
	diagnostic_selected = { bg = "NONE" },
	hint = { bg = "NONE" },
	hint_visible = { bg = "NONE" },
	hint_selected = { bg = "NONE" },
	hint_diagnostic = { bg = "NONE" },
	hint_diagnostic_visible = { bg = "NONE" },
	hint_diagnostic_selected = { bg = "NONE" },
	info = { bg = "NONE" },
	info_visible = { bg = "NONE" },
	info_selected = { bg = "NONE" },
	info_diagnostic = { bg = "NONE" },
	info_diagnostic_visible = { bg = "NONE" },
	info_diagnostic_selected = { bg = "NONE" },
	warning = { bg = "NONE" },
	warning_visible = { bg = "NONE" },
	warning_selected = { bg = "NONE" },
	warning_diagnostic = { bg = "NONE" },
	warning_diagnostic_visible = { bg = "NONE" },
	warning_diagnostic_selected = { bg = "NONE" },
	error = { bg = "NONE" },
	error_visible = { bg = "NONE" },
	error_selected = { bg = "NONE" },
	error_diagnostic = { bg = "NONE" },
	error_diagnostic_visible = { bg = "NONE" },
	error_diagnostic_selected = { bg = "NONE" },
	modified = { bg = "NONE" },
	modified_visible = { bg = "NONE" },
	modified_selected = { bg = "NONE" },
	duplicate_selected = { bg = "NONE" },
	duplicate_visible = { bg = "NONE" },
	duplicate = { bg = "NONE" },
	separator_selected = { bg = "NONE", fg = "NONE" },
	separator_visible = { bg = "NONE", fg = "NONE" },
	separator = { bg = "NONE", fg = "NONE", sp = "NONE" },
	indicator_selected = { bg = "NONE", fg = "NONE" },
	pick_selected = { bg = "NONE" },
	pick_visible = { bg = "NONE" },
	pick = { bg = "NONE" },
	offset_separator = { bg = "NONE", fg = "NONE" },
}

lvim.builtin.which_key.mappings["P"] = { "<cmd>Telescope projects<CR>", "Projects" }
lvim.builtin.which_key.mappings["t"] = {
	name = "+Trouble",
	r = { "<cmd>Trouble lsp_references<cr>", "References" },
	f = { "<cmd>Trouble lsp_definitions<cr>", "Definitions" },
	d = { "<cmd>Trouble document_diagnostics<cr>", "Diagnostics" },
	q = { "<cmd>Trouble quickfix<cr>", "QuickFix" },
	l = { "<cmd>Trouble loclist<cr>", "LocationList" },
	w = { "<cmd>Trouble workspace_diagnostics<cr>", "Workspace Diagnostics" },
}
lvim.builtin.which_key.mappings["m"] = {
	name = "+MiniMap",
	c = { "<cmd>lua require('mini.map').close()<cr>", "Close" },
	f = { "<cmd>lua require('mini.map').toggle_focus()<cr>", "Toggle Focus" },
	o = { "<cmd>lua require('mini.map').open()<cr>", "Open" },
	r = { "<cmd>lua require('mini.map').refresh()<cr>", "Refresh" },
	s = { "<cmd>lua require('mini.map').toggle_side()<cr>", "Toggle Side" },
	t = { "<cmd>lua require('mini.map').toggle()<cr>", "Toggle" },
}

lvim.builtin.alpha.active = true
lvim.builtin.alpha.mode = "dashboard"
lvim.builtin.alpha.dashboard.section.header = {}
lvim.builtin.alpha.dashboard.section.footer = {}
lvim.builtin.terminal.active = true
lvim.builtin.nvimtree.setup.view.side = "left"
lvim.builtin.nvimtree.setup.renderer.icons.show.git = true

lvim.builtin.treesitter.highlight.enable = true

lvim.lsp.automatic_configuration.skipped_servers = vim.tbl_filter(function(server)
	local allow = {
		-- "emmet_ls",
		"eslint",
	}

	local function has_value(tab, val)
		for _, value in ipairs(tab) do
			if value == val then
				return true
			end
		end

		return false
	end

	return not has_value(allow, server)
end, lvim.lsp.automatic_configuration.skipped_servers)

-- require("lvim.lsp.manager").setup("emmet_ls", {
-- 	filtypes = { "svelte" }
-- })
require("lspconfig")["emmet_ls"].setup({
	filetypes = { "svelte" },
})

local formatters = require("lvim.lsp.null-ls.formatters")
formatters.setup({
	{
		command = "stylua",
	},
	{
		command = "prettier",
	},
	-- {
	-- 	command = "autopep8",
	-- },
})

local linters = require("lvim.lsp.null-ls.linters")
linters.setup({
	-- {
	-- 	command = "luacheck",
	-- },
	-- {
	-- 	command = "flake8",
	-- },
	-- {
	-- 	command = "shellcheck",
	-- },
	-- {
	-- 	command = "cspell",
	-- },
})

local custom_onedark_vivid_lualine = require("lualine.themes.onedark_vivid")
local lualine_colors = require("onedarkpro.helpers").get_colors("onedark_vivid")

custom_onedark_vivid_lualine.normal.a = { bg = "NONE", fg = lualine_colors.green }
custom_onedark_vivid_lualine.normal.b = { bg = "NONE" }
custom_onedark_vivid_lualine.normal.c = { bg = "NONE" }
custom_onedark_vivid_lualine.insert.a = { bg = "NONE", fg = lualine_colors.blue }
custom_onedark_vivid_lualine.insert.b = { bg = "NONE" }
custom_onedark_vivid_lualine.visual.a = { bg = "NONE", fg = lualine_colors.purple }
custom_onedark_vivid_lualine.visual.b = { bg = "NONE" }
custom_onedark_vivid_lualine.replace.a = { bg = "NONE", fg = lualine_colors.yellow }
custom_onedark_vivid_lualine.replace.b = { bg = "NONE" }
custom_onedark_vivid_lualine.command.a = { bg = "NONE", fg = lualine_colors.red }
custom_onedark_vivid_lualine.command.b = { bg = "NONE" }

local components = require("lvim.core.lualine.components")
lvim.builtin.lualine.sections.lualine_a = {
	"mode",
}
lvim.builtin.lualine.sections.lualine_b = {
	{
		"filename",
		path = 1,
	},
}
-- lvim.builtin.lualine.sections.lualine_c = {}
lvim.builtin.lualine.sections.lualine_x = {
	-- "mode",
	"branch",
	components.diagnostics,
	-- components.spaces,
	-- components.filetype,
}
lvim.builtin.lualine.sections.lualine_y = {}
lvim.builtin.lualine.sections.lualine_z = {
	-- components.scrollbar,
}

lvim.builtin.lualine.options.theme = custom_onedark_vivid_lualine

lvim.plugins = {
	{
		"folke/trouble.nvim",
		cmd = "TroubleToggle",
	},
	{
		"nmac427/guess-indent.nvim",
		config = function()
			require("guess-indent").setup({})
		end,
	},
	{
		"olimorris/onedarkpro.nvim",
		config = function()
			require("onedarkpro").setup({
				colors = {
					-- bg = "#23272e",
					bg = "#282c34",
				},
				highlights = {
					CursorLineNr = { fg = "NONE" },
					CursorLine = { bg = "NONE" },
					NormalFloat = { guibg = "NONE" },
				},
				plugins = {
					which_key = false,
					nvim_tree = false,
				},
				options = {
					cursorline = false,
					transparency = true,
				},
			})

			vim.cmd("colorscheme onedark_vivid")
		end,
	},
	{
		"echasnovski/mini.map",
		branch = "stable",
		config = function()
			require("mini.map").setup()
			local map = require("mini.map")
			map.setup({
				integrations = {
					map.gen_integration.builtin_search(),
					map.gen_integration.diagnostic({
						error = "DiagnosticFloatingError",
						warn = "DiagnosticFloatingWarn",
						info = "DiagnosticFloatingInfo",
						hint = "DiagnosticFloatingHint",
					}),
					map.gen_integration.gitsigns(),
				},
				symbols = {
					encode = map.gen_encode_symbols.dot("4x2"),
					-- encode = map.gen_encode_symbols.shade("2x1"),
					-- encode = map.gen_encode_symbols.block("2x2"),
				},
				window = {
					side = "right",
					width = 10,
					winblend = 0,
					show_integration_count = true,
				},
			})
		end,
	},
	{
		"nacro90/numb.nvim",
		event = "BufRead",
		config = function()
			require("numb").setup({
				show_numbers = true,
				show_cursorline = true,
			})
		end,
	},
	{
		"kevinhwang91/nvim-bqf",
		event = { "BufRead", "BufNew" },
		config = function()
			require("bqf").setup({
				auto_enable = true,
				preview = {
					win_height = 12,
					win_vheight = 12,
					delay_syntax = 80,
					border_chars = { "┃", "┃", "━", "━", "┏", "┓", "┗", "┛", "█" },
				},
				func_map = {
					vsplit = "",
					ptogglemode = "z,",
					stoggleup = "",
				},
				filter = {
					fzf = {
						action_for = { ["ctrl-s"] = "split" },
						extra_opts = { "--bind", "ctrl-o:toggle-all", "--prompt", "> " },
					},
				},
			})
		end,
	},
	{
		"andymass/vim-matchup",
		event = "CursorMoved",
		config = function()
			vim.g.matchup_matchparen_offscreen = { method = "popup" }
		end,
	},
	{
		"sindrets/diffview.nvim",
		event = "BufRead",
	},
	{
		"f-person/git-blame.nvim",
		event = "BufRead",
		config = function()
			vim.cmd("highlight default link gitblame SpecialComment")
			vim.g.gitblame_enabled = 1
		end,
	},
	{
		"ruifm/gitlinker.nvim",
		event = "BufRead",
		config = function()
			require("gitlinker").setup({
				opts = {
					add_current_line_on_normal_mode = true,
					action_callback = require("gitlinker.actions").open_in_browser,
					print_url = true,
					mappings = "<leader>gy",
				},
			})
		end,
		requires = "nvim-lua/plenary.nvim",
	},
	{
		"pwntester/octo.nvim",
		requires = {
			"nvim-lua/plenary.nvim",
			"nvim-telescope/telescope.nvim",
			"kyazdani42/nvim-web-devicons",
		},
		config = function()
			require("octo").setup()
		end,
	},
	{
		"tpope/vim-fugitive",
		cmd = {
			"G",
			"Git",
			"Gdiffsplit",
			"Gread",
			"Gwrite",
			"Ggrep",
			"GMove",
			"GDelete",
			"GBrowse",
			"GRemove",
			"GRename",
			"Glgrep",
			"Gedit",
		},
		ft = { "fugitive" },
	},
	{
		"mattn/vim-gist",
		event = "BufRead",
		requires = "mattn/webapi-vim",
	},
	{
		"windwp/nvim-ts-autotag",
		config = function()
			require("nvim-ts-autotag").setup()
			-- require("nvim-ts-autotag").setup({
			-- 	filetypes = { "svelte" },
			-- })
		end,
	},
	{
		"JoosepAlviste/nvim-ts-context-commentstring",
		event = "BufRead",
	},
	{
		"p00f/nvim-ts-rainbow",
	},
	{
		"romgrk/nvim-treesitter-context",
		config = function()
			require("treesitter-context").setup({
				enable = true,
				throttle = true,
				max_lines = 0,
			})
		end,
	},
	{
		"norcalli/nvim-colorizer.lua",
		config = function()
			require("colorizer").setup({ "*" }, {
				RGB = true,
				RRGGBB = true,
				RRGGBBAA = true,
				rgb_fn = true,
				hsl_fn = true,
				css = true,
				css_fn = true,
			})
		end,
	},
	{
		"rmagatti/goto-preview",
		config = function()
			require("goto-preview").setup({
				width = 120,
				height = 25,
				default_mappings = false,
				debug = false,
				opacity = nil,
				post_open_hook = nil,
			})
			vim.cmd("nnoremap gpd <cmd>lua require('goto-preview').goto_preview_definition()<CR>")
			vim.cmd("nnoremap gpi <cmd>lua require('goto-preview').goto_preview_implementation()<CR>")
			vim.cmd("nnoremap gP <cmd>lua require('goto-preview').close_all_win()<CR>")
		end,
	},
	{
		"ahmedkhalf/lsp-rooter.nvim",
		event = "BufRead",
		config = function()
			require("lsp-rooter").setup()
		end,
	},
	{
		"ray-x/lsp_signature.nvim",
		event = "BufRead",
		config = function()
			require("lsp_signature").on_attach()
		end,
	},
	{
		"simrat39/symbols-outline.nvim",
		config = function()
			require("symbols-outline").setup()
		end,
	},
	{
		"metakirby5/codi.vim",
		cmd = "Codi",
	},
	{
		"iamcco/markdown-preview.nvim",
		run = "cd app && npm install",
		ft = "markdown",
		config = function()
			vim.g.mkdp_auto_start = 1
		end,
	},
	{
		"folke/todo-comments.nvim",
		event = "BufRead",
		config = function()
			require("todo-comments").setup()
		end,
	},
	{
		"itchyny/vim-cursorword",
		event = { "BufEnter", "BufNewFile" },
		config = function()
			vim.api.nvim_command("augroup user_plugin_cursorword")
			vim.api.nvim_command("autocmd!")
			vim.api.nvim_command("autocmd FileType NvimTree,lspsagafinder,dashboard,vista let b:cursorword = 0")
			vim.api.nvim_command("autocmd WinEnter * if &diff || &pvw | let b:cursorword = 0 | endif")
			vim.api.nvim_command("autocmd InsertEnter * let b:cursorword = 0")
			vim.api.nvim_command("autocmd InsertLeave * let b:cursorword = 1")
			vim.api.nvim_command("augroup END")
		end,
	},
	{
		"tpope/vim-surround",
	},
	{
		"wakatime/vim-wakatime",
	},
	{
		"nvim-telescope/telescope-fzy-native.nvim",
		run = "make",
		event = "BufRead",
	},
	{
		"dhruvasagar/vim-zoom",
	},
	-- {
	-- 	"kdheepak/lazygit.nvim"
	-- },
}

lvim.autocommands = {
	{
		{ "FileType" },
		{
			desc = "use bash highlighting for zsh",
			pattern = "zsh",
			callback = function()
				require("nvim-treesitter.highlight").attach(0, "bash")
			end,
		},
	},
	{
		{ "BufEnter", "Filetype" },
		{
			desc = "open mini.map and exclude some filetypes",
			pattern = { "*" },
			callback = function()
				local exclude_ft = {
					"qf",
					"NvimTree",
					"toggleterm",
					"TelescopePrompt",
					"alpha",
					"netrw",
				}

				local map = require("mini.map")
				if vim.tbl_contains(exclude_ft, vim.o.filetype) then
					vim.b.minimap_disable = true
					map.close()
				elseif vim.o.buftype == "" then
					map.open()
				end
			end,
		},
	},
}
