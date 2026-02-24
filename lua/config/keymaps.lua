local map = vim.keymap.set

map('i', 'jj', '<Esc>', { silent = true }) -- Escape insert mode by pressing 'jj'
map("n", "<leader>e", "<cmd>NvimTreeToggle<CR>", { silent = true }) -- Toggle file explorer with <leader>e
-- switch between buffers using <Tab> and <S-Tab>
map('n', '<Tab>', ':bnext<CR>', { silent = true })
map('n', '<S-Tab>', ':bprevious<CR>', { silent = true })
-- switch between windows using <C-h>, <C-j>, <C-k>, and <C-l>
map('n', '<C-h>', '<C-w>h', { silent = true })
map('n', '<C-j>', '<C-w>j', { silent = true })
map('n', '<C-k>', '<C-w>k', { silent = true })
map('n', '<C-l>', '<C-w>l', { silent = true })
-- resize windows using <C-Up>, <C-Down>, <C-Left>, and <C-Right>
map('n', '<C-Up>', ':resize -2<CR>', { silent = true })
map('n', '<C-Down>', ':resize +2<CR>', { silent = true })
map('n', '<C-Left>', ':vertical resize -2<CR>', { silent = true })
map('n', '<C-Right>', ':vertical resize +2<CR>', { silent = true })
-- clear search highlights with <leader>h
map('n', '<leader>h', ':nohlsearch<CR>', { silent = true })

