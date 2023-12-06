---@type ChadrcConfig 
local M = {}
M.mappings = require "custom.mappings"
M.plugins = "custom.plugins"
M.ui = {
  statusline = {
    theme = "vscode", -- default/vscode/vscode_colored/minimal

    -- default/round/block/arrow (separators work only for "default" statusline theme;
    -- round and block will work for the minimal theme only)
    -- separator_style = "round",
    overriden_modules = nil,
  },
  transparency = true,
  hl_override = {
    LineNr = {
      fg = "light_grey",
    }
  }
}

vim.wo.relativenumber = true
vim.o.textwidth = 72

vim.g.python3_host_prog = '/home/rick/.config/nvim/lua/custom/venv/bin/python'
vim.g.loaded_python3_provider = nil
vim.g.vimwiki_table_mappings = 0
return M

