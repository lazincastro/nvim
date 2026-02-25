-- =====================================================
-- Aliases
-- =====================================================
local autocmd = vim.api.nvim_create_autocmd
local augroup = vim.api.nvim_create_augroup
local set_hl  = vim.api.nvim_set_hl


-- =====================================================
-- Highlight Fixes
-- =====================================================

-- autocmd("ColorScheme", {
--   group = highlight_group,
--   callback = function()
--     local palette = require("catppuccin.palettes").get_palette()
--
--     set_hl(0, "MiniCursorword", {
--       bg = palette.surface1,
--       underline = false,
--     })
--   end,
-- })

-- =====================================================
-- General Autocommands
-- =====================================================
local general_group = augroup("GeneralSettings", { clear = true })

-- Add future general autocommands here
-- Example:
-- autocmd("BufWritePre", {
--   group = general_group,
--   pattern = "*",
--   callback = function()
--     vim.cmd(":%s/\\s\\+$//e")
--   end,
-- })
