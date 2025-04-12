-- AstroCommunity: import any community modules here
-- We import this file in `lazy_setup.lua` before the `plugins/` folder.
-- This guarantees that the specs are processed before any user plugins.

---@type LazySpec
return {
  "AstroNvim/astrocommunity",
  { import = "astrocommunity.pack.lua" },
  { import = "astrocommunity.completion.copilot-vim-cmp" },
  { import = "astrocommunity.motion.flash-nvim" },
  { import = "astrocommunity.motion.mini-surround" },
  { import = "astrocommunity.motion.harpoon" },
  { import = "astrocommunity.scrolling.mini-animate" },
  { import = "astrocommunity.indent.mini-indentscope" },
  { import = "astrocommunity.indent.indent-blankline-nvim" },
  { import = "astrocommunity.git.blame-nvim" },
  { import = "astrocommunity.completion.avante-nvim" },
  { import = "astrocommunity.pack.typescript" },
  { import = "astrocommunity.pack.html-css" },
  { import = "astrocommunity.pack.astro" },
  { import = "astrocommunity.pack.json" },
  { import = "astrocommunity.pack.php" },
  { import = "astrocommunity.pack.svelte" },
  { import = "astrocommunity.pack.vue" },
  { import = "astrocommunity.workflow.hardtime-nvim" },
  { import = "astrocommunity.workflow.precognition-nvim" },
  { import = "astrocommunity.utility.noice-nvim" },
  -- import/override with your plugins folder
}
