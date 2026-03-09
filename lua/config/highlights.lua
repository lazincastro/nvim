-- Configuration to highlight the word under the cursor
-- Make sure you have the 'mini.cursorword' plugin installed and configured to use this setting
vim.api.nvim_set_hl(0, "MiniCursorword", {
  underline = false,
  bg = "#3a3a3a", -- adjust if you want lighter/darker
})
