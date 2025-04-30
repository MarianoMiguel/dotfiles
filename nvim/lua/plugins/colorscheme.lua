return {
  {
    "kyazdani42/blue-moon",
    config = function() end,
  },
  {
    "echasnovski/mini.hues",
    lazy = true,
    opts = {
      background = "#0c1014",
      foreground = "#99d1ce",
      n_hues = 8,
      saturation = "medium",
      -- Accent color. One of: 'bg', 'fg', 'red', 'orange', 'yellow', 'green',
      -- 'cyan', 'azure', 'blue', 'purple'
      accent = "bg",
      -- Also can be set per plugin (see |MiniHues.config|).
      plugins = { default = true },
    },
  },
  {
    "ilof2/posterpole.nvim",
    lazy = true,
    -- event = "VeryLazy",
    -- priority = 1000,
    opts = {
      brightness = 4, -- negative numbers - darker, positive - lighter
    },
  },
  {
    "Shatur/neovim-ayu",
    -- FIX: add molten highlights
    name = "ayu",
    -- priority = 1000,
    opts = {
      overrides = {
        RenderMarkdownCode = { link = "Visual" },
        RenderMarkdownCodeInline = { link = "Visual" },
        Normal = { bg = "None" },
        NormalFloat = { bg = "none" },
        ColorColumn = { bg = "None" },
        SignColumn = { bg = "None" },
        Folded = { bg = "None" },
        FoldColumn = { bg = "None" },
        CursorLine = { bg = "None" },
        CursorColumn = { bg = "None" },
        VertSplit = { bg = "None" },
        -- TermCursor = { link = "Substitute" },
      },
    },
  },
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
