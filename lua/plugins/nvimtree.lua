require("nvim-tree").setup({
  view = {
    width = 35,
  },
  renderer = {
    group_empty = true,
  },
  filters = {
    dotfiles = false,
  },
})

-- Disable mini.indentscope in NvimTree
vim.api.nvim_create_autocmd("FileType", {
  pattern = "NvimTree",
  callback = function()
    vim.b.miniindentscope_disable = true
  end,
})
