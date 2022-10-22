vim.keymap.set({ "n" }, "<Space>", "", {})
vim.g.mapleader = " "

vim.keymap.set({ "n" }, "<leader><CR>", "<cmd>lua ReloadConfig()<CR>", {})
