return {
  -- show function signatures
  {
    "ray-x/lsp_signature.nvim",
    event = "BufRead",
    config = function() require("lsp_signature").setup() end,
  },
  -- TODO: make this work somehow
  {
    "echasnovski/mini.map",
    event = "User AstroFile",
    opts = {
      window = {
        show_integration_count = true,
        width = 20,
        winblend = 25,
      },
    },
  },
  {
    "nacro90/numb.nvim",
    event = "BufRead",
    config = function()
      require("numb").setup {
        show_numbers = true,
        show_cursorline = true,
      }
    end,
  },
  {
    "romgrk/nvim-treesitter-context",
    config = function()
      require("treesitter-context").setup {
        throttle = true,
        max_lines = 8,
      }
    end,
  },
  {
    "davidmh/cspell.nvim",
  },
  { "andweeb/presence.nvim", lazy = false, enable = false },
  {
    "zbirenbaum/copilot.lua",
    cmd = "Copilot",
    event = "User AstroFile",
    opts = {
      suggestion = {
        auto_trigger = true,
        keymap = {
          accept = "<C-l>",
        },
      },
    },
  },
  {"christoomey/vim-tmux-navigator", lazy = false},
}
