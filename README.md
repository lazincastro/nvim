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
---
## 🧠 Design Principles

- Explicit configuration over magic
- Clear responsibility boundaries
- Minimal plugin surface
- Fast startup time
- Maintainability first

---
## 📦 Stack

- mini.nvim (core utilities)
- nvim-tree (file explorer)
- GitHub Copilot (AI assistance)

## ⚙️ Philosophy

- Modular by design
- Clear responsibility boundaries
- Lightweight plugin stack
- Built for DevOps & Backend workflows
- No unnecessary abstractions
- No overengineered setup

---

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

---

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


# 🎯 Target Audience

Ideal for:

* DevOps engineers
* Backend developers
* Users who prefer clean and fast setups
* Those who don’t like heavy distributions like LazyVim or AstroNvim
