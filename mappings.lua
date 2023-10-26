local M = {}
M.abc = {
  n = {
    ["<leader>rp"] = { "<cmd> silent %!prettier --stdin-filepath % <CR>", "Run prettier" },
    ["<leader>tt"] = {
      function()
         require("base46").toggle_transparency()
      end,
      "Toggle transparency",
    },
  },
  v = {
    vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv"),
    vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")
  }
}
return M
