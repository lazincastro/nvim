local fn = vim.fn
local install_path = fn.stdpath("data") .. "/site/pack/deps/start/"

local function ensure_plugin(repo, folder)
  local path = install_path .. folder

  if not vim.loop.fs_stat(path) then
    vim.cmd('echo "Installing ' .. folder .. '..." | redraw')

    fn.system({
      "git",
      "clone",
      "--filter=blob:none",
      "--depth=1",
      repo,
      path,
    })

    vim.cmd("packadd " .. folder)
    vim.cmd("echo 'Installed " .. folder .. "' | redraw")
  end
end

local plugins = {
  ["mini.nvim"] = "https://github.com/nvim-mini/mini.nvim",
  ["nvim-tree.lua"] = "https://github.com/nvim-tree/nvim-tree.lua",
  ["nvim-web-devicons"] = "https://github.com/nvim-tree/nvim-web-devicons",
  ["copilot.vim"] = "https://github.com/github/copilot.vim",
  ["gruvbox.nvim"] = "https://github.com/ellisonleao/gruvbox.nvim",
}

for folder, repo in pairs(plugins) do
  ensure_plugin(repo, folder)
end
