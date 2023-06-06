return {
  "nvim-treesitter/nvim-treesitter",
  opts = function(_, opts)
    -- ensure the following TS parsers are installed
    opts.ensure_installed = require("astronvim.utils").list_insert_unique(opts.ensure_installed, {
      "lua",
      "javascript",
      "typescript",
      "python",
    })
  end,
}
