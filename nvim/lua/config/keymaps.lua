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

vim.keymap.set("n", "<C-c>", ":CodeCompanionChat<CR>")

-- vim.keymap.set("n", "<C-h>", "^", opts) -- Start of line (non-blank)
-- vim.keymap.set("n", "<C-l>", "g_", opts) -- End of line (non-blank)
--
-- Insert mode
-- vim.keymap.set("i", "<C-h>", "<C-o>^", opts)
-- vim.keymap.set("i", "<C-l>", "<C-o>$", opts)
--
-- -- Visual mode
-- vim.keymap.set("v", "<C-h>", "^", opts)
-- vim.keymap.set("v", "<C-l>", "$", opts)
--
-- local noop = "<nop>"
--
-- for _, mode in ipairs({ "n", "i", "v" }) do
--   vim.keymap.set(mode, "<Left>", noop, opts)
--   vim.keymap.set(mode, "<Right>", noop, opts)
--   vim.keymap.set(mode, "<Up>", noop, opts)
--   vim.keymap.set(mode, "<Down>", noop, opts)
-- end

vim.keymap.set("n", "<A-Right>", "$")
vim.keymap.set("n", "<A-Left>", "^")
vim.keymap.set("i", "<A-Left>", "<C-o>^")
vim.keymap.set("i", "<A-Right>", "<C-o>g_<Right>")
vim.keymap.set("n", "<A-S-Right>", "v$", opts)
vim.keymap.set("n", "<A-S-Left>", "v^", opts)
vim.keymap.set("v", "<A-S-Right>", "$", opts)
vim.keymap.set("v", "<A-S-Left>", "^", opts)
vim.keymap.set("n", "<A-S-Up>", "vgg", opts)
vim.keymap.set("n", "<A-S-Down>", "vG", opts)
vim.keymap.set("v", "<A-S-Up>", "gg", opts)
vim.keymap.set("v", "<A-S-Down>", "G", opts)
