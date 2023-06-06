return {
  -- use mason-lspconfig to configure LSP installations
  {
    "williamboman/mason-lspconfig.nvim",
    -- override `require("mason-lspconfig").setup(...)`
    opts = function(_, opts)
      -- ensure the following lsp servers are installed
      opts.ensure_installed = require("astronvim.utils").list_insert_unique(opts.ensure_installed, {
        "lua_ls",
        "tsserver",
        "pyright",
      })
    end,
  },
  -- use mason-null-ls to configure Formatters/Linter installation for null-ls sources
  {
    "jay-babu/mason-null-ls.nvim",
    -- overrides `require("mason-null-ls").setup(...)`
    opts = function(_, opts)
      -- ensure the following formatters are installed
      opts.ensure_installed = require("astronvim.utils").list_insert_unique(opts.ensure_installed, {
        "stylua",
        "prettier",
        "autopep8",
      })
    end,
  },
  {
    "jay-babu/mason-nvim-dap.nvim",
    -- overrides `require("mason-nvim-dap").setup(...)`
    opts = function(_, opts)
      -- ensure the following DAPs are installed
      opts.ensure_installed = require("astronvim.utils").list_insert_unique(opts.ensure_installed, {
        "debugpy",
      })
    end,
  },
}
