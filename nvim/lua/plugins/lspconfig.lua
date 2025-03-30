return {
  {
    "neovim/nvim-lspconfig",
    opts = function(_, opts)
      if not opts.servers then
        opts.servers = {}
      end

      opts.servers.emmet_language_server = {
        filetypes = {
          "astro",
          "html",
          "css",
          "typescriptreact",
          "javascriptreact",
          "less",
          "sass",
          "scss",
        },
        init_options = {},
      }

      opts.diagnostics = {
        virtual_text = false,
        inlay_hints = { enabled = false },
      }
    end,
  },
}
