-- return {
--   "brenoprata10/nvim-highlight-colors",
--   event = { "BufReadPre", "BufNewFile" },
--   config = function()
--     require("nvim-highlight-colors").setup({
--       enable_named_colors = true,
--       enable_tailwind = true,
--     })
--   end,
-- }
return {
  {
    "catgoose/nvim-colorizer.lua",
    event = "BufReadPre",
    opts = { -- set to setup table
      filetypes = {
        "*",
      },
      tailwind = "both",
      tailwind_opts = { update_names = true },
      always_update = true,
    },
  },
}
