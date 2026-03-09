local map = vim.keymap.set

-- leader
vim.g.mapleader = " "

-- Toggle file explorer with <leader>e
map("n", "<leader>e", "<cmd>NvimTreeToggle<CR>", { silent = true })

-- Escape insert mode by pressing 'jj'
map('i', 'jj', '<Esc>', { silent = true })

-- better up/down (wrap aware)
map({ "n", "x" }, "j", "v:count == 0 ? 'gj' : 'j'", { expr = true, silent = true })
map({ "n", "x" }, "k", "v:count == 0 ? 'gk' : 'k'", { expr = true, silent = true })

-- window navigation
map("n", "<C-h>", "<C-w>h", { desc = "Left Window" })
map("n", "<C-j>", "<C-w>j", { desc = "Down Window" })
map("n", "<C-k>", "<C-w>k", { desc = "Up Window" })
map("n", "<C-l>", "<C-w>l", { desc = "Right Window" })

-- window resize
map("n", "<C-Up>", "<cmd>resize +2<CR>")
map("n", "<C-Down>", "<cmd>resize -2<CR>")
map("n", "<C-Left>", "<cmd>vertical resize -2<CR>")
map("n", "<C-Right>", "<cmd>vertical resize +2<CR>")

-- move lines
map("n", "<A-j>", "<cmd>m .+1<CR>==")
map("n", "<A-k>", "<cmd>m .-2<CR>==")

map("i", "<A-j>", "<Esc><cmd>m .+1<CR>==gi")
map("i", "<A-k>", "<Esc><cmd>m .-2<CR>==gi")

map("v", "<A-j>", ":m '>+1<CR>gv=gv")
map("v", "<A-k>", ":m '<-2<CR>gv=gv")

-- buffers
map("n", "<S-h>", "<cmd>bprevious<CR>")
map("n", "<S-l>", "<cmd>bnext<CR>")

map("n", "<leader>bd", "<cmd>bdelete<CR>", { desc = "Delete Buffer" })
map("n", "<leader>bo", "<cmd>%bd|e#|bd#<CR>", { desc = "Delete Other Buffers" })

-- clear search highlight
map("n", "<Esc>", "<cmd>noh<CR><Esc>", { desc = "Clear search" })

-- better search navigation
map("n", "n", "'Nn'[v:searchforward].'zv'", { expr = true })
map("n", "N", "'nN'[v:searchforward].'zv'", { expr = true })

-- undo breakpoints
map("i", ",", ",<C-g>u")
map("i", ".", ".<C-g>u")
map("i", ";", ";<C-g>u")

-- save
map({ "n", "i", "x" }, "<C-s>", "<cmd>w<CR>")

-- indent keep selection
map("v", "<", "<gv")
map("v", ">", ">gv")

-- new file
map("n", "<leader>fn", "<cmd>enew<CR>")

-- quickfix
map("n", "<leader>xq", "<cmd>copen<CR>")
map("n", "<leader>xc", "<cmd>cclose<CR>")
map("n", "]q", "<cmd>cnext<CR>")
map("n", "[q", "<cmd>cprev<CR>")

-- diagnostics
map("n", "<leader>cd", vim.diagnostic.open_float)
map("n", "]d", vim.diagnostic.goto_next)
map("n", "[d", vim.diagnostic.goto_prev)

-- splits
map("n", "<leader>-", "<C-w>s", { desc = "Horizontal Split" })
map("n", "<leader>|", "<C-w>v", { desc = "Vertical Split" })

-- close window
map("n", "<leader>wd", "<C-w>c")

-- tabs
map("n", "<leader><tab><tab>", "<cmd>tabnew<CR>")
map("n", "<leader><tab>d", "<cmd>tabclose<CR>")
map("n", "<leader><tab>]", "<cmd>tabnext<CR>")
map("n", "<leader><tab>[", "<cmd>tabprevious<CR>")
