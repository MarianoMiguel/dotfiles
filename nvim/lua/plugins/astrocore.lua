-- AstroCore provides a central place to modify mappings, vim options, autocommands, and more!
-- Configuration documentation can be found with `:h astrocore`
-- NOTE: We highly recommend setting up the Lua Language Server (`:LspInstall lua_ls`)
--       as this provides autocomplete and documentation while editing

---@type LazySpec
return {
  "AstroNvim/astrocore",
  ---@type AstroCoreOpts
  opts = {
    -- Configure core features of AstroNvim
    features = {
      large_buf = { size = 1024 * 256, lines = 10000 }, -- set global limits for large files for disabling features like treesitter
      autopairs = true, -- enable autopairs at start
      cmp = true, -- enable completion at start
      diagnostics = { virtual_text = false, virtual_lines = false }, -- diagnostic settings on startup
      highlighturl = true, -- highlight URLs at start
      notifications = true, -- enable notifications at start
    },
    -- Diagnostics configuration (for vim.diagnostics.config({...})) when diagnostics are on
    diagnostics = {
      virtual_text = false,
      virtual_lines = false,
      underline = true,
    },
    -- passed to `vim.filetype.add`
    filetypes = {
      -- see `:h vim.filetype.add` for usage
      extension = {
        foo = "fooscript",
      },
      filename = {
        [".foorc"] = "fooscript",
      },
      pattern = {
        [".*/etc/foo/.*"] = "fooscript",
      },
    },
    -- vim options can be configured here
    options = {
      opt = { -- vim.opt.<key>
        cursorline = true,
        -- relativenumber = false, -- sets vim.opt.relativenumber
        number = true, -- sets vim.opt.number
        spell = false, -- sets vim.opt.spell
        signcolumn = "yes", -- sets vim.opt.signcolumn to yes
        wrap = true, -- sets vim.opt.wrap
      },
      g = { -- vim.g.<key>
        -- configure global vim variables (vim.g)
        -- NOTE: `mapleader` and `maplocalleader` must be set in the AstroNvim opts or before `lazy.setup`
        -- This can be found in the `lua/lazy_setup.lua` file
      },
    },
    -- Mappings can be configured through AstroCore as well.
    -- NOTE: keycodes follow the casing in the vimdocs. For example, `<Leader>` must be capitalized
    mappings = {
      -- first key is the mode
      n = {
        -- second key is the lefthand side of the map

        -- navigate buffer tabs
        ["]b"] = { function() require("astrocore.buffer").nav(vim.v.count1) end, desc = "Next buffer" },
        ["[b"] = { function() require("astrocore.buffer").nav(-vim.v.count1) end, desc = "Previous buffer" },
        -- navigate buffer tabs with <Tab> and <S-Tab>
        ["<Tab>"] = { function() require("astrocore.buffer").nav(1) end, desc = "Next buffer" },
        ["<S-Tab>"] = { function() require("astrocore.buffer").nav(-1) end, desc = "Previous buffer" },

        -- navigate buffer tabs with <Tab> and <S-Tab>
        ["<Tab>"] = { function() require("astrocore.buffer").nav(1) end, desc = "Next buffer" },
        ["<S-Tab>"] = { function() require("astrocore.buffer").nav(-1) end, desc = "Previous buffer" },

        -- mappings seen under group name "Buffer"
        ["<Leader>bd"] = {
          function()
            require("astroui.status.heirline").buffer_picker(
              function(bufnr) require("astrocore.buffer").close(bufnr) end
            )
          end,
          desc = "Close buffer from tabline",
        },

        ["<C-c>"] = { "<Esc>", desc = "Map Ctrl+c to Escape" },
        ["<Leader>D"] = { '"_d', desc = "Delete without yanking (nnoremap & vnoremap)" },
        ["<Leader>Y"] = { '"+Y', desc = "Yank to system clipboard (nmap)" },
        ["<Leader>y"] = { '"+y', desc = "Yank to system clipboard (nnoremap & vnoremap)" },
        -- ["<C-d>"] = { "<C-d>:sleep 100m<CR>zz", desc = "Scroll down and center (nnoremap)", silent = true },
        -- ["<C-u>"] = { "<C-u>:sleep 100m<CR>zz", desc = "Scroll up and center (nnoremap)", silent = true },
        -- ["<C-f>"] = { "<C-f>:sleep 30m<CR>zz", desc = "Scroll down and center", silent = true },
        -- ["<C-b>"] = { "<C-b>:sleep 30m<CR>zz", desc = "Scroll up and center", silent = true },
        -- ["<C-K>"] = { "<C-u>", desc = "Scroll up and center" },
        -- ["<C-J>"] = { "<C-d>", desc = "Scroll down and center" },
        ["<Leader>p"] = { '"_dP', desc = "Paste without overwriting register (nnoremap)" },
        -- tables with just a `desc` key will be registered with which-key if it's installed
        -- this is useful for naming menus
        -- ["<Leader>b"] = { desc = "Buffers" },

        -- setting a mapping to false will disable it
        -- ["<C-S>"] = false,
        ["<A-l>"] = { "$", desc = "Go to end of line (normal mode)", silent = true },
        ["<A-h>"] = { "_", desc = "Go to start of line (normal mode)", silent = true },
        ["<A-k>"] = { "gg_", desc = "Go to start of file and first non-blank character (normal mode)", silent = true },
        ["<A-j>"] = { "G$", desc = "Go to end of file and end of line (normal mode)", silent = true },
      },
      v = {
        ["<Leader>D"] = { '"_d', desc = "Delete without yanking (vnoremap)" },
        ["<Leader>y"] = { '"+y', desc = "Yank to system clipboard (vnoremap)" },
        ["<Leader>p"] = { '"_dP', desc = "Paste without overwriting register (xnoremap)" },
        ["<A-l>"] = { "$", desc = "Go to end of line (visual mode)", silent = true },
        ["<A-h>"] = { "_", desc = "Go to start of line (visual mode)", silent = true },
        ["<A-k>"] = { "gg_", desc = "Go to start of file and first non-blank character (visual mode)", silent = true },
        ["<A-j>"] = { "G$", desc = "Go to end of file and end of line (visual mode)", silent = true },
      },
      i = {
        ["<A-l>"] = { "<C-o>$", desc = "Go to end of line (insert mode)", silent = true },
        ["<A-h>"] = { "<C-o>_", desc = "Go to start of line (insert mode)", silent = true },
        ["<A-k>"] = {
          "<C-o>gg<C-o>_",
          desc = "Go to start of file and first non-blank character (insert mode)",
          silent = true,
        },
        ["<A-j>"] = { "<C-o>G<C-o>$", desc = "Go to end of file and end of line (insert mode)", silent = true },
      },
    },
  },
}
