local map = vim.keymap.set

-- leader
vim.g.mapleader = " "

-- file explorer
map("n", "<leader>e", "<cmd>NvimTreeToggle<CR>", { silent = true, desc = "Explorer: Toggle file tree" })

-- escape insert mode
map("i", "jj", "<Esc>", { silent = true, desc = "Exit insert mode" })

-- better up/down (wrap aware)
map({ "n", "x" }, "j", "v:count == 0 ? 'gj' : 'j'", { expr = true, silent = true, desc = "Move down (wrap aware)" })
map({ "n", "x" }, "k", "v:count == 0 ? 'gk' : 'k'", { expr = true, silent = true, desc = "Move up (wrap aware)" })

-- window navigation
map("n", "<C-h>", "<C-w>h", { desc = "Window: Go left" })
map("n", "<C-j>", "<C-w>j", { desc = "Window: Go down" })
map("n", "<C-k>", "<C-w>k", { desc = "Window: Go up" })
map("n", "<C-l>", "<C-w>l", { desc = "Window: Go right" })

-- window resize
map("n", "<C-Up>", "<cmd>resize +2<CR>", { desc = "Window: Increase height" })
map("n", "<C-Down>", "<cmd>resize -2<CR>", { desc = "Window: Decrease height" })
map("n", "<C-Left>", "<cmd>vertical resize -2<CR>", { desc = "Window: Decrease width" })
map("n", "<C-Right>", "<cmd>vertical resize +2<CR>", { desc = "Window: Increase width" })

-- move lines
map("n", "<A-j>", "<cmd>m .+1<CR>==", { desc = "Move line down" })
map("n", "<A-k>", "<cmd>m .-2<CR>==", { desc = "Move line up" })

map("i", "<A-j>", "<Esc><cmd>m .+1<CR>==gi", { desc = "Move line down" })
map("i", "<A-k>", "<Esc><cmd>m .-2<CR>==gi", { desc = "Move line up" })

map("v", "<A-j>", ":m '>+1<CR>gv=gv", { desc = "Move selection down" })
map("v", "<A-k>", ":m '<-2<CR>gv=gv", { desc = "Move selection up" })

-- buffers
map("n", "<S-h>", "<cmd>bprevious<CR>", { desc = "Buffer: Previous" })
map("n", "<S-l>", "<cmd>bnext<CR>", { desc = "Buffer: Next" })

map("n", "<leader>bd", "<cmd>bdelete<CR>", { desc = "Buffer: Delete" })
map("n", "<leader>bo", "<cmd>%bd|e#|bd#<CR>", { desc = "Buffer: Delete others" })

-- clear search highlight
map("n", "<Esc>", "<cmd>noh<CR><Esc>", { desc = "Search: Clear highlight" })

-- better search navigation
map("n", "n", "'Nn'[v:searchforward].'zv'", { expr = true, desc = "Search: Next result" })
map("n", "N", "'nN'[v:searchforward].'zv'", { expr = true, desc = "Search: Previous result" })

-- undo breakpoints
map("i", ",", ",<C-g>u", { desc = "Undo breakpoint" })
map("i", ".", ".<C-g>u", { desc = "Undo breakpoint" })
map("i", ";", ";<C-g>u", { desc = "Undo breakpoint" })

-- save
map({ "n", "i", "x" }, "<C-s>", "<cmd>w<CR>", { desc = "File: Save" })

-- indent keep selection
map("v", "<", "<gv", { desc = "Indent left (keep selection)" })
map("v", ">", ">gv", { desc = "Indent right (keep selection)" })

-- new file
map("n", "<leader>fn", "<cmd>enew<CR>", { desc = "File: New buffer" })

-- quickfix
map("n", "<leader>xq", "<cmd>copen<CR>", { desc = "Quickfix: Open list" })
map("n", "<leader>xc", "<cmd>cclose<CR>", { desc = "Quickfix: Close list" })
map("n", "]q", "<cmd>cnext<CR>", { desc = "Quickfix: Next item" })
map("n", "[q", "<cmd>cprev<CR>", { desc = "Quickfix: Previous item" })

-- diagnostics
map("n", "<leader>cd", vim.diagnostic.open_float, { desc = "Diagnostics: Show message" })
map("n", "]d", vim.diagnostic.goto_next, { desc = "Diagnostics: Next" })
map("n", "[d", vim.diagnostic.goto_prev, { desc = "Diagnostics: Previous" })

-- splits
map("n", "<leader>-", "<C-w>s", { desc = "Window: Horizontal split" })
map("n", "<leader>|", "<C-w>v", { desc = "Window: Vertical split" })

-- close window
map("n", "<leader>wd", "<C-w>c", { desc = "Window: Close" })

-- tabs
map("n", "<leader><tab><tab>", "<cmd>tabnew<CR>", { desc = "Tab: New" })
map("n", "<leader><tab>d", "<cmd>tabclose<CR>", { desc = "Tab: Close" })
map("n", "<leader><tab>]", "<cmd>tabnext<CR>", { desc = "Tab: Next" })
map("n", "<leader><tab>[", "<cmd>tabprevious<CR>", { desc = "Tab: Previous" })

