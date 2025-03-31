-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
--

local opts = { noremap = true, silent = true }

-- Normal-mode commands
vim.keymap.set("n", "mj", ":MoveLine 1<CR>", opts)
vim.keymap.set("n", "mk", ":MoveLine -1<CR>", opts)
vim.keymap.set("n", "mh", ":MoveWord -1<CR>", opts)
vim.keymap.set("n", "ml", ":MoveWord 1<CR>", opts)

-- Visual-mode commands
vim.keymap.set("x", "mj", ":MoveBlock 1<CR>", opts)
vim.keymap.set("x", "mk", ":MoveBlock -1<CR>", opts)
vim.keymap.set("v", "mh", ":MoveHBlock -1<CR>", opts)
vim.keymap.set("v", "ml", ":MoveHBlock 1<CR>", opts)
