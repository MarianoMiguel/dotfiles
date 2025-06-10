return {
  {
    "vernette/ai-commit.nvim",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "nvim-telescope/telescope.nvim",
    },
    config = function()
      require("ai-commit").setup {
        {
          -- openrouter_api_key = "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", -- or set OPENROUTER_API_KEY environment variable
          model = "anthropic/claude-3.7-sonnet",
          -- model = "qwen/qwen-2.5-72b-instruct:free", -- default model
          auto_push = false, -- whether to automatically push after commit
        },
      }
    end,
  },
}
