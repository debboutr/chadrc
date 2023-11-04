---@type ChadrcConfig 
local M = {}
M.mappings = require "custom.mappings"
M.plugins = "custom.plugins"

M.ui = {
  transparency = false,
  hl_override = {
    LineNr = {
      fg = "teal",
    }
  }
}

vim.wo.relativenumber = true

vim.g.python3_host_prog = '/usr/bin/python3'
vim.g.loaded_python3_provider = nil

return M
