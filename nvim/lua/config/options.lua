-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

vim.opt.clipboard = "unnamedplus"

-- Start listen server for remote theme reloading (niri-themes integration)
-- This allows theme-set to reload the colorscheme automatically
if not vim.g.started_server then
  local socket_path = string.format("/run/user/%s/nvim.%s.0", vim.fn.getenv("UID") or "1000", vim.fn.getpid())
  pcall(vim.fn.serverstart, socket_path)
  vim.g.started_server = true
end
