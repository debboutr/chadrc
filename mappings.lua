local M = {}
M.tabufline = {
  n = {
    -- cycle through buffers
    ["<leader>k"] = {
      function()
        require("nvchad.tabufline").tabuflineNext()
      end,
      "Goto next buffer",
    },
    ["<leader>j"] = {
      function()
        require("nvchad.tabufline").tabuflinePrev()
      end,
      "Goto prev buffer",
    },
  }
}
M.disabled = {
  n = {
    ["<tab>"] = "",
    ["<S-tab>"] = "",
  }
}
M.addagio = {
  n = {
    ["<leader>co"] = {
      function()
        require("cmp").setup.buffer { enabled = false }
        print(vim.inspect(require("cmp").setup.filetype()))
      end,
      "Disable completion for this buffer",
    },
    ["<leader>fk"] = { "<cmd> Telescope keymaps <CR>", "Find Keymaps" },
    ["<leader>rp"] = { "<cmd> silent %!prettier --stdin-filepath % <CR>", "Run prettier" },
    ["<leader>rl"] = { "<cmd>w<CR> <bar>:luafile %<CR>", "Run luafile" },
    ["<leader>tt"] = {
      function()
         require("base46").toggle_transparency()
      end,
      "Toggle transparency",
    },
  },
  v = {
    ["J"] = { ":m '>+1<CR>gv=gv", "Move visual selection down" },
    ["K"] = { ":m '<-2<CR>gv=gv", "Move visual selection down" }
  }
}
return M
