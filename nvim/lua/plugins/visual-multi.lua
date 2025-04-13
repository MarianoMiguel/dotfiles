return {
  "mg979/vim-visual-multi",
  event = "VeryLazy", -- or "BufReadPost" to trigger earlier
  init = function()
    -- Optional: disable default mappings (see customization below)
    vim.g.VM_default_mappings = 1
    vim.g.VM_maps = {
      ["Find Under"] = "<C-n>",
      ["Find Subword Under"] = "<C-n>",
      ["Select Cursor Down"] = "<M-Down>",
      ["Select Cursor Up"] = "<M-Up>",
    }

    -- Optional: tweak highlight or behavior
    vim.g.VM_theme = "ocean"
    vim.g.VM_show_warnings = 0
  end,
}
