-- Bootstrap mini.nvim
require("config.bootstrap")

-- Core config
require("config.options")
-- require("config.theme")
require("config.keymaps")
require("config.highlights")
require("config.autocommands")

-- Plugins
require("plugins.mini")
require("plugins.nvimtree")
require("plugins.copilot")
require("plugins.copilotchat")
