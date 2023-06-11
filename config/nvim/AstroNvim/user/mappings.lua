return {
  -- normal mode keybinds
  n = {
    ["<leader>b"] = { name = "Buffers" },
    ["<leader>bn"] = { "<cmd>tabnew<cr>", desc = "New tab" },
    ["<leader>bD"] = {
      function()
        require("astronvim.utils.status").heirline.buffer_picker(
          function(bufnr) require("astronvim.utils.buffer").close(bufnr) end
        )
      end,
      desc = "Pick to close",
    },
    ["<S-l>"] = {
      function() require("astronvim.utils.buffer").nav(vim.v.count > 0 and vim.v.count or 1) end,
      desc = "Next buffer",
    },
    ["<S-h>"] = {
      function() require("astronvim.utils.buffer").nav(-(vim.v.count > 0 and vim.v.count or 1)) end,
      desc = "Previous buffer",
    },
    ["<leader>ff"] = {
      function()
        local opts = {} -- define here if you want to define something
        vim.fn.system "git rev-parse --is-inside-work-tree"
        if vim.v.shell_error == 0 then
          require("telescope.builtin").git_files(opts)
        else
          require("telescope.builtin").find_files(opts)
        end
      end,
      desc = "Find files",
    },
    ["<leader>uW"] = {
      function()
        if vim.opt.formatoptions:get()["a"] ~= nil then
          vim.opt.formatoptions:remove "a"
          vim.notify "Auto text wrap disabled"
        else
          vim.opt.formatoptions:append "a"
          vim.notify "Auto text wrap enabled"
        end
      end,
      desc = "Toggle auto text wrap",
    },
  },
}
