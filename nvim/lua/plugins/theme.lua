return {
  -- TokyoNight as fallback
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

  -- niri-theme: dynamic theme from niri-themes system
  -- Colorscheme at ~/.config/nvim/colors/niri-theme.lua (symlinked from niri-themes)
  -- Use :colorscheme niri-theme to activate, or set as default below
  {
    "LazyVim/LazyVim",
    opts = {
      -- Change to "niri-theme" to use dynamic themes, "tokyonight" for static
      colorscheme = "niri-theme",
    },
  },
}
