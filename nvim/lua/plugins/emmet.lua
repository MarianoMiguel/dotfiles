-- Emmet HTML/JSX abbreviation expansion. Default trigger: <C-y>,
-- Example: type `div.foo>span.bar` then <C-y>, → expands to full HTML
return {
  {
    "mattn/emmet-vim",
    ft = { "html", "css", "scss", "javascriptreact", "typescriptreact", "vue", "svelte", "astro" },
    init = function()
      vim.g.user_emmet_leader_key = "<C-y>"
      vim.g.user_emmet_settings = {
        javascript = { extends = "jsx" },
        typescript = { extends = "tsx" },
      }
    end,
  },
}
