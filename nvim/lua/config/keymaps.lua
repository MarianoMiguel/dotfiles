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

vim.cmd([[function! IndentWithI()
    if len(getline('.')) == 0
        return "\"_cc"
    else
        return "i"
    endif
endfunction
nnoremap <expr> i IndentWithI()]])

-- vim.cmd([[
-- function! SmartEnter()
--   let line = getline('.')
--   let pos = col('.') - 1
--   let before = strpart(line, 0, pos)
--   let after  = strpart(line, pos)
--
--   if before =~ '>\s*$' && after =~ '^\s*</'
--     return "\<CR>\<Esc>O\<Esc>==A"
--   else
--     return "\<CR>"
--   endif
-- endfunction
--
-- inoremap <expr> <CR> SmartEnter()
-- ]])

vim.cmd([[
function! SmartEnter()
  " Get the current line and the cursor column (1-based).
  let line = getline('.')
  let pos = col('.') - 1

  " Split the line into "before" and "after" the cursor.
  let before = strpart(line, 0, pos)
  let after  = strpart(line, pos)

  " Check if before ends with '>' and after starts with '</'.
  if before =~ '>\s*$' && after =~ '^\s*</'
    " 1) <CR>      (splits line at cursor in insert mode)
    " 2) <Esc>     (switch to normal mode, now on the new second line)
    " 3) O         (open a blank line above)
    "    (type two literal spaces in that blank line)
    " 4) <Esc>     (back to normal mode)
    " 5) A         (go to end of that line, insert mode again)
    return "\<CR>\<Esc>O  \<Esc>A"
  else
    " Otherwise, just return a normal <CR>.
    return "\<CR>"
  endif
endfunction

" Map <CR> in insert mode to call SmartEnter().
inoremap <expr> <CR> SmartEnter()
]])

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
