-- ~/.config/nvim/lua/plugins/cmp-codeium.lua
return {
  "hrsh7th/nvim-cmp",
  dependencies = {
    "Exafunction/codeium.nvim",
  },
  opts = function(_, opts)
    table.insert(opts.sources, {
      name = "codeium",
      group_index = 0, -- Optional: higher priority
    })
  end,
}
