vim.cmd("packadd catppuccin")

require("catppuccin").setup({
  flavour = "mocha", -- latte, frappe, macchiato, mocha

  transparent_background = false,

  integrations = {
    gitsigns = true,
    nvimtree = true,
  },
})

vim.cmd("colorscheme catppuccin")

-- Get the current palette to use for custom highlights
local palette = require("catppuccin.palettes").get_palette()

-- Custom highlights for mini.nvim's cursorword
vim.api.nvim_set_hl(0, "MiniCursorword", {
  bg = palette.surface1,
  underline = false,
})

-- Highlight the current occurrence of the word under the cursor with a slightly different background
vim.api.nvim_set_hl(0, "MiniCursorwordCurrent", {
  bg = palette.surface2,
  underline = false,
})
