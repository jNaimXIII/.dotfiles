return {
  updater = {
    remote = "origin", -- use origin remote for updates
    channel = "stable", -- release mode ("stable" or "nightly")
    version = "latest", -- version to use ("latest" or <tag name>)
    branch = "nightly", -- branch name (NIGHTLY ONLY)
    commit = nil, -- commit hash (NIGHTLY ONLY)
    pin_plugins = nil, -- nil, true, false (nil will pin plugins on stable only)
    skip_prompts = false, -- skip prompts about breaking changes
    show_changelog = true, -- show the changelog after performing an update
    auto_quit = false, -- automatically quit the current session after a successful update
    remotes = {
      -- ["remote_name"] = "github_user/repo",
    },
  },

  colorscheme = "astrodark", -- colorscheme to use

  -- diagnostics configuration (vim.diagnostics.config({...}))
  diagnostics = {
    virtual_text = true,
    underline = true,
  },

  lsp = {
    -- formatting options
    formatting = {
      -- format on save options
      format_on_save = {
        enabled = true, -- enable format on save globally
        -- enable format on save for specified filetypes only
        allow_filetypes = {},
        -- disable format on save for specified filetypes
        ignore_filetypes = {},
      },
      -- disable formatting capabilities for the listed language servers
      disabled = {
        "lua_ls",
      },
      timeout_ms = 2000, -- default format timeout
    },
    -- enable servers that are already installed without mason
    servers = {},
  },

  -- lazy setup options
  lazy = {
    defaults = {
      lazy = true, -- lazy load plugins by default
    },
    performance = {
      rtp = {
        -- disabled vim plugins
        disabled_plugins = { "tohtml", "gzip", "matchit", "zipPlugin", "netrwPlugin", "tarPlugin" },
      },
    },
  },

  -- runs at the end of setup process
  polish = function()
    vim.api.nvim_create_autocmd("FileType", {
      desc = "Disable comment continuation",
      callback = function() vim.cmd "setlocal formatoptions-=c formatoptions-=r formatoptions-=o" end,
    })
  end,
}
