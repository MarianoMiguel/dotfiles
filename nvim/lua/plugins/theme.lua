return {
  "rose-pine/neovim",
  name = "rose-pine",
  config = function()
    require("rose-pine").setup {
      enable = {
        terminal = true,
        migrations = true,
      },
      styles = {
        transparency = true,
      },
    }
    vim.cmd "colorscheme rose-pine"
  end,
}
