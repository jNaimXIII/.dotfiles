return function(local_vim)
  local_vim.g.mapleader = " " -- use <space> as leader
  local_vim.g.autoformat_enabled = true -- enable autoformatting (lsp.formatting.format_on_save must be enabled)
  local_vim.g.cmp_enabled = true -- enable code completion
  local_vim.g.autopairs_enabled = true -- enable autopairs
  local_vim.g.diagnostics_mode = 3 -- show diagnostics (0=off, 1=only show in status line, 2=virtual text off, 3=all on)
  local_vim.g.icons_enabled = true -- enable icons
  local_vim.g.ui_notifications_enabled = true -- enable ui notifications

  local_vim.opt.relativenumber = true -- turn on relative numbers in numberline
  local_vim.opt.number = true -- show numberline
  local_vim.opt.spell = false -- disable vim spellchecker
  local_vim.opt.signcolumn = "auto" -- automatically show and hide signcolumn
  local_vim.opt.wrap = false -- wrap text by default
  -- local_vim.opt.cmdheight = 1 -- set command line height to 1
  local_vim.opt.colorcolumn = "80"

  return local_vim
end
