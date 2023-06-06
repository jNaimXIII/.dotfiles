return {
  -- customize alpha options
  {
    "goolord/alpha-nvim",
    opts = function(_, opts)
      opts.section.header.val = {
        "    _ _   _       _          __   _______ _____ _____ ",
        "   (_) \\ | |     (_)         \\ \\ / /_   _|_   _|_   _|",
        "    _|  \\| | __ _ _ _ __ ___  \\ V /  | |   | |   | |  ",
        "   | | . ` |/ _` | | '_ ` _ \\  > <   | |   | |   | |  ",
        "   | | |\\  | (_| | | | | | | |/ . \\ _| |_ _| |_ _| |_ ",
        "   | |_| \\_|\\__,_|_|_| |_| |_/_/ \\_\\_____|_____|_____|",
        "  _/ |                                                ",
        " |__/                                                 ",
      } -- remove dashboard header
      opts.section.footer.val = {} -- remove dashboard footer
      return opts
    end,
  },
  -- customize LuaSnip options
  {
    "L3MON4D3/LuaSnip",
    config = function(plugin, opts)
      require "plugins.configs.luasnip"(plugin, opts) -- include the default astronvim config that calls the setup call

      local luasnip = require "luasnip"

      -- allow javascriptreact snippets in javascript files
      luasnip.filetype_extend("javascript", { "javascriptreact" })

      -- allow javascriptreact snippets in typescript files
      luasnip.filetype_extend("typescript", { "javascriptreact" })
    end,
  },
  -- customize neotree options
  {
    "nvim-neo-tree/neo-tree.nvim",
    opts = function(_, opts)
      -- customize neotree filter options
      opts.filesystem.filtered_items = {
        visible = true, -- show hidden files
        hide_dotfiles = false, -- show dotfiles
        hide_gitignored = false, -- hide gitignored files
      }
      return opts
    end,
  },
  -- customize better-escape behavior
  {
    "max397574/better-escape.nvim",
    opts = function(_, opts)
      opts.mapping = {} -- remove jk mapping for escape
      return opts
    end,
  },
}
