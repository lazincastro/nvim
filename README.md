# 💤 Neovim Config — Lazaro Castro

<h3 align="center">
Simple. Fast. <strong>Zero spaghetti.</strong>
</h3>

<p align="center">
Minimal Lua-based Neovim configuration focused on performance, structure, and productivity.
</p>

---

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

---

# 🚀 Installation

## 1️⃣ Requirements

- Neovim >= 0.9
- Git
- Node.js (required for Copilot)

---

## 2️⃣ Backup your current config

```bash
mv ~/.config/nvim ~/.config/nvim.bak
rm -rf ~/.local/share/nvim                                               
rm -rf ~/.local/state/nvim
rm -rf ~/.cache/nvim

````

---

## 3️⃣ Clone the repository

```bash
git clone https://github.com/lazincastro/nvim.git ~/.config/nvim
```

---

## 4️⃣ Start Neovim

```bash
nvim
```

On first launch:

* The plugin manager will install automatically
* Plugins will be downloaded
* Restart Neovim if required

---

# 🎯 Target Audience

Ideal for:

* DevOps engineers
* Backend developers
* Users who prefer clean and fast setups
* Those who don’t like heavy distributions like LazyVim or AstroNvim
