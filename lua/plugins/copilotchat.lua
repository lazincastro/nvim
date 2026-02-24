local chat = require("CopilotChat")
local select = require("CopilotChat.select")

chat.setup({
  window = {
    layout = "vertical",
    width = 0.35,
  },
  mappings = {
    close = { normal = "q" },
  },
})

local map = vim.keymap.set
local opts = { silent = true, noremap = true }

-- Toggle the CopilotChat buffer
map("n", "<leader>cc", "<cmd>CopilotChatToggle<CR>", vim.tbl_extend("force", opts, { desc = "CopilotChat: Toggle" }))

-- Explain: visual selection or current buffer in normal mode
map("v", "<leader>ce", function()
  chat.ask("Explain the selected code.", { selection = select.visual })
end, vim.tbl_extend("force", opts, { desc = "CopilotChat: Explain selection" }))

map("n", "<leader>ce", function()
  chat.ask("Explain the code in the current buffer.", { selection = select.buffer })
end, vim.tbl_extend("force", opts, { desc = "CopilotChat: Explain buffer" }))

-- Fix: visual selection or current buffer in normal mode
map("v", "<leader>cf", function()
  chat.ask("Fix any bugs or issues in the selected code.", { selection = select.visual })
end, vim.tbl_extend("force", opts, { desc = "CopilotChat: Fix selection" }))

map("n", "<leader>cf", function()
  chat.ask("Fix any bugs or issues in the current buffer.", { selection = select.buffer })
end, vim.tbl_extend("force", opts, { desc = "CopilotChat: Fix buffer" }))
