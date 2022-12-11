vim.opt.syntax = "on"

vim.opt.number = true
vim.opt.relativenumber = true

vim.opt.expandtab = true
vim.opt.shiftwidth = 4
vim.opt.softtabstop = 4
vim.opt.tabstop = 4

vim.opt.ignorecase = true
vim.opt.smartcase = true
vim.opt.smartindent = true

vim.opt.cursorline = true
vim.opt.laststatus = 3
vim.opt.showmode = false
vim.opt.showtabline = 2
vim.opt.signcolumn = "yes"
vim.opt.wrap = false
vim.opt.termguicolors = true

vim.opt.confirm = true
vim.opt.fixendofline = true

vim.opt.completeopt = { "menu", "menuone", "noinsert", "noselect" }

vim.opt.gdefault = true
vim.opt.iskeyword:append("-")
vim.opt.shortmess:append("csI")
vim.opt.whichwrap:append("b,h,l,<,>,[,]")

vim.opt.mouse = "a"

vim.opt.pumheight = 12

vim.opt.scrolloff = 10
vim.opt.sidescrolloff = 10

vim.opt.splitbelow = true
vim.opt.splitright = true

vim.opt.swapfile = false
vim.opt.undofile = true
vim.opt.writebackup = false

vim.opt.updatetime = 100
vim.opt.timeout = false
vim.opt.browsedir = "buffer"
vim.g.netrw_banner = 0

vim.opt.colorcolumn = "80,120"
