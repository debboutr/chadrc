---@type ChadrcConfig 
local M = {}
M.mappings = require "custom.mappings"
M.plugins = "custom.plugins"

M.ui = {
  transparency = true,
  hl_override = {
    LineNr = {
      fg = "teal",
    }
  }
}

vim.wo.relativenumber = true
vim.o.textwidth = 72

vim.g.python3_host_prog = '/home/rick/.config/nvim/lua/custom/venv/bin/python'
vim.g.loaded_python3_provider = nil

return M

