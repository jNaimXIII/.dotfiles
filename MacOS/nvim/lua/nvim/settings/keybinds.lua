vim.keymap.set({ "n" }, "<Space>", "", {})
vim.g.mapleader = " "

vim.keymap.set({ "n" }, "<leader><CR>", "<cmd>lua ReloadConfig()<CR>", {})

vim.keymap.set({ "n" }, "<leader>w", "<cmd>w<CR>", {})
