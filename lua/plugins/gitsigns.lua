require("gitsigns").setup({
  signs = {
    add          = { text = "▎" },
    change       = { text = "▎" },
    delete       = { text = "" },
    topdelete    = { text = "" },
    changedelete = { text = "▎" },
  },

  current_line_blame = true,
  current_line_blame_opts = {
    delay = 500,
    virt_text_pos = "eol",
  },

  preview_config = {
    border = "rounded",
  },
})
