---@type ChadrcConfig 
local M = {}
M.ui = {theme = 'catppuccin'}
M.plugins = "custom.plugins"
M.mappings = require "custom.mappings"
-- make the background transparent
-- vim.cmd[[highlight Normal ctermbg=NONE guibg=NONE]]

-- vim.api.nvim_create_autocmd({"BufWritePre"}, {
--   pattern = { "*.tsx" },
--   command = [[ %!prettier --stdin-filepath % ]],
-- })
return M

