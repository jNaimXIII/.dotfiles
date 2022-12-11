local PACKER_BOOTSTRAP = BootstrapPacker()

if not is_plugin_available("packer") then
	return
end

return require("packer").startup(function(use)
	use("wbthomason/packer.nvim")

	use("nvim-lua/plenary.nvim")

	use("olimorris/onedarkpro.nvim")

	use("williamboman/nvim-lsp-installer")
	use("neovim/nvim-lspconfig")
	use("jose-elias-alvarez/null-ls.nvim")

	use({ "nvim-treesitter/nvim-treesitter", run = ":TSUpdate" })

	if PACKER_BOOTSTRAP then
		require("packer").sync()
	end
end)
