function _G.ReloadConfig()
	for name, _ in pairs(package.loaded) do
		package.loaded[name] = nil
	end

	dofile(vim.env.MYVIMRC)
end
