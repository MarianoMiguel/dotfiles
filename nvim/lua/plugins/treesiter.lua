return {
  "nvim-treesitter/nvim-treesitter",
  opts = function(_, opts)
    opts.ensure_installed = vim.tbl_extend("force", opts.ensure_installed or {}, {
      "html",
      "javascript",
      "typescript",
      "css",
      "lua",
    })
    opts.indent = {
      enable = true,
    }
  end,
}
