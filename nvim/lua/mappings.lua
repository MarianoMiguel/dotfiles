require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")
map("n", "<C-i>", "<Cmd>CodeCompanionChat Toggle <cr>", { desc = "Code Companion Chat Toggle"})
map("n", "ca", "<Cmd>CodeCompanionActions <cr>", {  desc = "Code Companion Chat Toggle" })
map("n", "cc", "<Cmd>CodeCompanionChat Toggle <cr>", {  desc = "Code Companion Chat Toggle" })
map("n", "gg", "<Cmd>LazyGit <cr>", { desc = "Code Companion Chat Toggle" } )
-- map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")
