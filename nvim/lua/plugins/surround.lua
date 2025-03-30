return {
  "kylechui/nvim-surround",
  event = "VeryLazy",
  config = function()
    require("nvim-surround").setup({
      keymaps = {
        normal = "gys",
        normal_cur = "gys", -- surround current line
        normal_line = "gyss",
        normal_cur_line = "gyss",
        visual = "gS",
        visual_line = "gV",
        delete = "gds",
        change = "gcs",
      },
    })
  end,
}
