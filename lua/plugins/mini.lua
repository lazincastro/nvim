require('mini.indentscope').setup({
  symbol = '│',
  options = { try_as_border = true },
})

require('mini.cursorword').setup()
require('mini.statusline').setup()
require('mini.trailspace').setup()
require('mini.surround').setup()
require('mini.comment').setup()
require('mini.starter').setup()
require('mini.tabline').setup()
require('mini.notify').setup()
require('mini.icons').setup()
require('mini.pairs').setup()
require('mini.move').setup()
require('mini.clue').setup({
  triggers = {
    { mode = "n", keys = "<leader>" },
    { mode = "n", keys = "g" },
    { mode = "n", keys = "[" },
    { mode = "n", keys = "]" },
  },
  clues = {
    -- leader groups
    { mode = "n", keys = "<leader>b", desc = "+buffers" },
    { mode = "n", keys = "<leader>f", desc = "+files" },
    { mode = "n", keys = "<leader>w", desc = "+windows" },
    { mode = "n", keys = "<leader>x", desc = "+quickfix" },
    { mode = "n", keys = "<leader>c", desc = "+code" },
    { mode = "n", keys = "<leader><tab>", desc = "+tabs" },
  },
})
