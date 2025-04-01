return {
  "Saghen/blink.cmp",
  opts = function(_, opts)
    opts.sources = vim.tbl_deep_extend("force", opts.sources or {}, {
      default = {
        "lsp",
        "path",
        "buffer",
        "codecompanion",
      },
    })
    opts.cmdline = vim.tbl_deep_extend("force", opts.cmdline or {}, {
      enabled = true,
      keymap = { preset = "cmdline" },
      sources = function()
        local type = vim.fn.getcmdtype()
        if type == "/" or type == "?" then
          return { "buffer" }
        end
        if type == ":" or type == "@" then
          return { "cmdline" }
        end
        return {}
      end,
      completion = {
        trigger = {
          show_on_blocked_trigger_characters = {},
          show_on_x_blocked_trigger_characters = {},
        },
        list = {
          selection = {
            preselect = true,
            auto_insert = true,
          },
        },
        menu = { auto_show = false },
        ghost_text = { enabled = true },
      },
    })
  end,
}
