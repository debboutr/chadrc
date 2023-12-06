local M = {}
M.tabufline = {
  n = {
    -- cycle through buffers
    ["<leader>l"] = {
      function()
        require("nvchad.tabufline").tabuflineNext()
      end,
      "Goto next buffer",
    },

    ["<leader>h"] = {
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
M.abc = {
  n = {
    -- ["<leader>rt"] = {
    --   function()
    --     local asdf = vim.api.nvim_command_output("nmap <tab>")
    --     -- print(vim.inspect(asdf))
    --     -- print(type(asdf))
    --     if (asdf == "\nNo mapping found")
    --       then
    --         print("...resetting <tab> keymap")
    --         vim.keymap.set("n", "<tab>", require("nvchad.tabufline").tabuflineNext, {desc="Goto next buffer"})
    --       else
    --         print("...deleting <tab> keymap")
    --         vim.keymap.del('n', '<tab>')
    --     end
    --   end,
    --   "Toggle tab keymap",
    -- },
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
    vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv"),
    vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")
  }
}
return M
