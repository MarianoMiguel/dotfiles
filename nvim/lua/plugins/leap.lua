return {
  "ggandor/leap-spooky.nvim",
  dependencies = { "ggandor/leap.nvim" },
  config = function()
    require("leap-spooky").setup({})
  end,
}
