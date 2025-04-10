-- return {
--   {
--     "catppuccin/nvim",
--     name = "catppuccin",
--     priority = 1000,
--     opts = {
--       transparent_background = true,
--       term_colors = true,
--     },
--   },
--   {
--     "LazyVim/LazyVim",
--     opts = {
--       colorscheme = "catppuccin-mocha",
--     },
--   },
-- }

return {
  "rose-pine/neovim",
  name = "rose-pine",
  config = function()
    vim.cmd("colorscheme rose-pine")
  end,
}

-- return {
--   {
--     "rebelot/kanagawa.nvim",
--     lazy = false,
--     priority = 1000,
--     opts = {
--       transparent = true,
--       terminal_colors = true,
--     },
--   },
--   {
--     "LazyVim/LazyVim",
--     opts = {
--       colorscheme = "kanagawa",
--     },
--   },
-- }
