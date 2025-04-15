return {
  "zaldih/themery.nvim",
  lazy = false,
  config = function()
    require("themery").setup {
      themes = { "catppuccin", "rose-pine", "tokyonight", "kanagawa", "kanagawa-paper" }, -- Your list of installed colorschemes.
      livePreview = true,
    }
  end,
}
