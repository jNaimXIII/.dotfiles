if not is_plugin_available("packer") then
	return
end

local util = require("packer.util")

require("packer").init({
	compile_path = util.join_paths(vim.fn.stdpath("data"), "site", "pack", "packer_compiled.lua"),
	display = {
		open_fn = function()
			return util.float({ border = "rounded" })
		end,
	},
})
