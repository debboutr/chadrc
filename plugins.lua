local plugins = {
  {
    "jose-elias-alvarez/null-ls.nvim",
    event = "VeryLazy",
    config = function ()
      require "custom.configs.null-ls"
    end
  },
  -- {
  --   "mhartington/formatter.nvim",
  --   event = "VeryLazy",
  --   config = function ()
  --     require "custom.configs.formatter"
  --   end
  -- },
  -- {
  --   "mfussenegger/nvim-lint",
  --   event = "VeryLazy",
  --   config = function ()
  --     require "custom.configs.lint"
  --   end
  -- },
  {
    "williamboman/mason.nvim",
    opts = {
      ensure_installed = {
        "eslint-lsp",
        "prettier",
        "typescript-language-server"
      }
    }
  },
  {
    "neovim/nvim-lspconfig",
    config = function ()
      require "plugins.configs.lspconfig"
      require "custom.configs.lspconfig"
    end,
  },
}
return plugins
