-- =====================================================
-- Leader Key
-- =====================================================
vim.g.mapleader = ' '                 -- Set space as leader key


-- =====================================================
-- UI & Appearance
-- =====================================================
vim.opt.termguicolors = true          -- Enable true color support
vim.opt.cursorline = true             -- Highlight current line
vim.opt.number = true                 -- Show absolute line numbers
vim.opt.relativenumber = true         -- Show relative line numbers
vim.opt.signcolumn = "yes"            -- Always show sign column
vim.opt.colorcolumn = "100"           -- Highlight column at 100 chars
vim.opt.wrap = false                  -- Disable line wrapping
vim.opt.scrolloff = 10                -- Keep 10 lines above/below cursor
vim.opt.sidescrolloff = 10            -- Keep 10 columns left/right of cursor
vim.opt.fillchars = { eob = " " }     -- Hide ~ on empty lines
vim.opt.guicursor = ""                -- Use block cursor in all modes


-- =====================================================
-- Window Behavior
-- =====================================================
vim.opt.splitbelow = true             -- Horizontal splits open below
vim.opt.splitright = true             -- Vertical splits open to the right


-- =====================================================
-- Indentation & Tabs
-- =====================================================
vim.opt.expandtab = true              -- Use spaces instead of tabs
vim.opt.tabstop = 2                   -- Number of spaces per tab
vim.opt.shiftwidth = 2                -- Indent width for autoindent
vim.opt.softtabstop = 2               -- Spaces per tab when editing
vim.opt.smartindent = true            -- Smart auto-indentation


-- =====================================================
-- Search Behavior
-- =====================================================
vim.opt.smartcase = true              -- Case-sensitive if uppercase used


-- =====================================================
-- Completion & Popup Menu
-- =====================================================
vim.opt.completeopt = "menuone,noinsert,noselect" -- Better completion UX
vim.opt.pumheight = 10                -- Popup menu max height
vim.opt.pumblend = 10                 -- Popup menu transparency
vim.opt.winblend = 0                  -- Floating window transparency


-- =====================================================
-- Editing Behavior
-- =====================================================
vim.opt.clipboard = "unnamedplus"     -- Use system clipboard
vim.opt.lazyredraw = true             -- Improve macro performance
vim.opt.showmode = false              -- Hide default mode display
