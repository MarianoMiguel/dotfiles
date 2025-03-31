return {
  "hinell/move.nvim",
  dependencies = {
    "mrjones2014/legendary.nvim",
  },
  config = function()
    require("move").setup({})
  end,
}
