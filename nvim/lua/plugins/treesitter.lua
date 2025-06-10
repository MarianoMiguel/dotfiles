-- Customize Treesitter

---@type LazySpec
return {
  "nvim-treesitter/nvim-treesitter",
  opts = function(_, opts)
    opts.modules = opts.modules or {}
    opts.modules.autotag = {
      enable = true,
    }
    opts.ensure_installed = {
      "lua",
      "vim",
      "vimdoc",
      "bash",
      "json",
      "yaml",
      "markdown",
      "markdown_inline",
      "html",
      "css",
      "typescript",
      "javascript",
      "tsx",
      "php",
      "python",
      "rust",
      "go",
      "java",
      "c",
      "cpp",
      "haskell",
      "scala",
      "swift",
      "ruby",
      "vue",
      "svelte",
      "dockerfile",
      -- add more arguments for adding more treesitter parsers
    }
  end,
}
