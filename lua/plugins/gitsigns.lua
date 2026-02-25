require("gitsigns").setup({
  signs = {
    add          = { text = "▎" },
    change       = { text = "▎" },
    delete       = { text = "" },
    topdelete    = { text = "" },
    changedelete = { text = "▎" },
  },

  linehl = false,  -- disable line highlight
  numhl = false,   -- disable number highlight

  current_line_blame = true,
  current_line_blame_opts = {
    delay = 500,
    virt_text_pos = "eol",
  },

  preview_config = {
    border = "rounded",
  },
})
