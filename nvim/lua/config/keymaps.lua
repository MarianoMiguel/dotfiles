-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
--

local opts = { noremap = true, silent = true }

-- Normal-mode commands
vim.keymap.set("n", "mj", ":MoveLine 1<CR>", opts)
vim.keymap.set("n", "mk", ":MoveLine -1<CR>", opts)
vim.keymap.set("n", "<C+A+Up>", ":MoveLine -1<CR>", opts)
vim.keymap.set("n", "mh", ":MoveWord -1<CR>", opts)
vim.keymap.set("n", "ml", ":MoveWord 1<CR>", opts)
vim.keymap.set("n", "<C+A+Down>", ":MoveLine 1<CR>", opts)

-- Visual-mode commands
vim.keymap.set("x", "mj", ":MoveBlock 1<CR>", opts)
vim.keymap.set("x", "mk", ":MoveBlock -1<CR>", opts)
vim.keymap.set("v", "mh", ":MoveHBlock -1<CR>", opts)
vim.keymap.set("v", "ml", ":MoveHBlock 1<CR>", opts)

vim.keymap.set("n", "<C-c>", ":CodeCompanionChat<CR>")

-- vim.keymap.set("n", "<A-Right>", "$")
-- vim.keymap.set("n", "<A-Left>", "^")
-- vim.keymap.set("i", "<A-Left>", "<C-o>^")
-- vim.keymap.set("i", "<A-Right>", "<C-o>g_<Right>")
-- vim.keymap.set("n", "<A-S-Right>", "v$", opts)
-- vim.keymap.set("n", "<A-S-Left>", "v^", opts)
-- vim.keymap.set("v", "<A-S-Right>", "$", opts)
-- vim.keymap.set("v", "<A-S-Left>", "^", opts)
-- vim.keymap.set("n", "<A-S-Up>", "vgg", opts)
-- vim.keymap.set("n", "<A-S-Down>", "vG", opts)
-- vim.keymap.set("v", "<A-S-Up>", "gg", opts)
-- vim.keymap.set("v", "<A-S-Down>", "G", opts)
-- vim.keymap.set("n", "<A-Up>", "gg", opts)
-- vim.keymap.set("n", "<A-Down>", "G", opts)
-- vim.keymap.set("i", "<A-Up>", "<C-o>gg", opts)
-- vim.keymap.set("i", "<A-Down>", "<C-o>G", opts)
