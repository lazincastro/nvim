-- Bootstrap mini.nvim
require("config.bootstrap")

-- Core config
require("config.options")
require("config.keymaps")
require("config.highlights")
require("config.autocommands")
require("config.theme")

-- Plugins
require("plugins.mini")
require("plugins.nvimtree")
require("plugins.copilot")
require("plugins.copilotchat")
require("plugins.gitsigns")

