vim.cmd([[
  augroup UPDATE_PACKER_PLUGINS
    autocmd!
    autocmd BufWritePost plugins.lua source <afile> | PackerCompile
  augroup end
]])
