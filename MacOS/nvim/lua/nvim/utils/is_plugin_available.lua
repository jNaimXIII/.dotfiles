function _G.is_plugin_available(name)
	return pcall(require, name)
end
