return {
  "mg979/vim-visual-multi",
  branch = "master", -- required
  event = "VeryLazy", -- or "BufReadPre" if you prefer
  init = function()
    -- Set Vimscript globals using vim.g
    vim.g.VM_match_case = 1
    vim.g.VM_regex_patterns = { [[\<%s\>]] }
  end,
}
