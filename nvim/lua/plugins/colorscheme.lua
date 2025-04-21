return {
  -- Rose Pine
  {
    "rose-pine/neovim",
    name = "rose-pine",
    config = function()
      require("rose-pine").setup {
        variant = "moon",
        disable_background = true,
        disable_float_background = true,
      }
    end,
  },

  -- Catppuccin
  {
    "catppuccin/nvim",
    name = "catppuccin",
    config = function()
      require("catppuccin").setup {
        flavour = "mocha",
        transparent_background = true,
      }
    end,
  },
}
