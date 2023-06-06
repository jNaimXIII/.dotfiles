return {
  "jose-elias-alvarez/null-ls.nvim",
  opts = function(_, config)
    local null_ls = require "null-ls"
    local cspell = require "cspell"

    -- null-ls sources
    config.sources = {
      null_ls.builtins.formatting.stylua,
      null_ls.builtins.formatting.prettier,

      cspell.diagnostics.with { find_json = os.getenv "HOME" .. "/.cspell.json" },
      cspell.code_actions.with { find_json = os.getenv "HOME" .. "/.cspell.json" },
    }
    return config
  end,
}
