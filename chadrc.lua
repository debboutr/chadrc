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
-- local nvimtree = require "plugins.configs.nvimtree"
-- nvimtree.ui.confirm.remove = false


vim.wo.relativenumber = true
return M
