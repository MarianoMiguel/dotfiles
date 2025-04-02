return {
  "mbbill/undotree",
  keys = {
    { "<leader>z", "<cmd>UndotreeToggle<cr>", desc = "Toggle Undotree" },
  },
  config = function()
    -- Optional settings
    vim.g.undotree_WindowLayout = 2 -- Tree on the right
    vim.g.undotree_SplitWidth = 30
    vim.g.undotree_SetFocusWhenToggle = 1
  end,
}
