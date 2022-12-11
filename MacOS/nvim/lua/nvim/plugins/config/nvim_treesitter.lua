if not is_plugin_available("nvim-treesitter") then
	return
end

require("nvim-treesitter.configs").setup({
	auto_install = true,
	highlight = {
		enable = true,
	},
	indent = {
		enable = true,
	},
})
