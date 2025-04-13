-- Customize Treesitter

---@type LazySpec
return {
  "nvim-treesitter/nvim-treesitter",
  opts = {
    autotag = {
      enable = true,
    },
    ensure_installed = {
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
    },
  },
}
