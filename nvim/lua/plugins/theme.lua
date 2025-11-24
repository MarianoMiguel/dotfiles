return {
  -- {
  --   "datsfilipe/vesper.nvim",
  --   lazy = false,
  --   priority = 1000,
  --   config = function()
  --     require("vesper").setup({
  --       transparent = true,
  --       italics = {
  --         comments = true,
  --         keywords = false,
  --         functions = false,
  --         strings = false,
  --         variables = false,
  --       },
  --     })
  --     vim.cmd("colorscheme vesper")
  --   end,
  -- },
  --
  {
    "folke/tokyonight.nvim",
    opts = {
      transparent = true,
      styles = {
        sidebars = "transparent",
        floats = "transparent",
      },
    },
  },
}
