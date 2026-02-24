<h1 align="center">💤 Neovim Config</h1>

<p align="center">
  Minimal Lua-based setup focused on performance and clean architecture.
</p>

<p align="center">
  <strong>Simple.</strong>
  <strong>Fast.</strong>
  <strong>Zero spaghetti.</strong>
</p>

<p align="center">
  ⚡ Modular • 🧩 Lightweight • 🚀 DevOps-ready
</p>

<p align="center">
  <img src="https://img.shields.io/badge/Neovim-0.9+-blue?style=flat-square&logo=neovim" />
  <img src="https://img.shields.io/badge/Lua-Config-2C2D72?style=flat-square&logo=lua" />
  <img src="https://img.shields.io/badge/License-MIT-green?style=flat-square" />
</p>

<br>

## 🧠 Design Principles

- Explicit configuration over magic
- Clear responsibility boundaries
- Minimal plugin surface
- Fast startup time
- Maintainability first

<br>

## 📦 Stack

- mini.nvim (core utilities)
- nvim-tree (file explorer)
- GitHub Copilot (AI assistance)
- CopilotChat.nvim (AI chat interface)

<br>

## ⚙️ Philosophy

- Modular by design
- Clear responsibility boundaries
- Lightweight plugin stack
- Built for DevOps & Backend workflows
- No unnecessary abstractions
- No overengineered setup

<br>

## 🚀 Why this config?

Because complexity should be intentional — not accidental.

This setup avoids:

- Tangled dependencies  
- Bloated plugin ecosystems  
- Hidden magic  
- Hard-to-maintain structures  

Instead, it prioritizes:

- Explicit configuration  
- Clean structure  
- Predictable behavior  
- Fast startup  

<br>

## 📂 Project Structure

```

.
├── init.lua
├── lua
│   ├── config
│   │   ├── autocommands.lua
│   │   ├── bootstrap.lua
│   │   ├── highlights.lua
│   │   ├── keymaps.lua
│   │   ├── options.lua
│   │   └── theme.lua
│   └── plugins
│       ├── copilot.lua
│       ├── copilotchat.lua
│       ├── mini.lua
│       └── nvimtree.lua

```


## 🚀 Installation
### Requirements

- Neovim >= 0.9
- Git
- Node.js (required for Copilot)

```bash
mv ~/.config/nvim ~/.config/nvim.bak
mv ~/.local/share/nvim ~/.local/share/nvim.bak                                               
mv ~/.local/state/nvim ~/.local/state/nvim.bak
mv ~/.cache/nvim ~/.cache/nvim.bak
git clone https://github.com/lazincastro/nvim.git ~/.config/nvim
rm -rf ~/.config/nvim/.git
nvim
```
On first launch:

* The plugin manager will install automatically
* Plugins will be downloaded
* Restart Neovim if required

<br>

# 🎯 Target Audience

Ideal for:

* DevOps engineers
* Backend developers
* Users who prefer clean and fast setups
* Those who don’t like heavy distributions like LazyVim or AstroNvim

<br>

## 🤖 CopilotChat.nvim

[CopilotChat.nvim](https://github.com/CopilotC-Nvim/CopilotChat.nvim) is a Neovim plugin that provides an interactive chat interface powered by GitHub Copilot. It allows you to ask questions, explain code, fix bugs, and more — directly inside Neovim.

### Requirements

- GitHub Copilot subscription (active and authenticated via `copilot.vim`)
- Node.js (required by `copilot.vim`)
- Neovim >= 0.9

### Keymaps

| Mode   | Keymap        | Action                                      |
|--------|---------------|---------------------------------------------|
| Normal | `<leader>cc`  | Toggle the CopilotChat panel                |
| Visual | `<leader>ce`  | Explain the selected code                   |
| Normal | `<leader>ce`  | Explain the code in the current buffer      |
| Visual | `<leader>cf`  | Fix bugs/issues in the selected code        |
| Normal | `<leader>cf`  | Fix bugs/issues in the current buffer       |

Inside the chat panel, press `q` to close it.

### Usage Examples

1. **Ask a question about the current file**  
   In normal mode, press `<leader>cc` to open the chat panel, then type your question and press `Enter`.

2. **Explain a block of code**  
   Select the lines in visual mode, then press `<leader>ce`. The chat will open with an explanation.

3. **Fix code automatically**  
   Select the problematic code in visual mode and press `<leader>cf` to ask Copilot to suggest a fix.

### Window Layout

The chat opens as a vertical split occupying 35% of the screen width, keeping your code visible while you interact with the AI.
