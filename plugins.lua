local plugins = {
  {
      "vimwiki/vimwiki",
      lazy = false,
      branch = "dev",
      init = function()
          vim.g.vimwiki_list = {
              {
                  -- template_path = vim.fn.stdpath("data") .. "/site/pack/packer/start/vimwiki/autoload/",
                  syntax = "default",
                  ext = ".vimwiki",
                  path = "~/vimwiki",
              },
          }
          vim.g.vimwiki_global_ext = 0
      end,
  },
  {
    "nvim-tree/nvim-tree.lua",
    opts = {
      git = {
        enable = true,
      },
      renderer = {
        highlight_git = true,
        icons = {
          show = {
            git = true,
          },
        },
      },
      ui = { -- remove the confirmation that defaults to No!
        confirm = {
          default_yes = true,
        },
      },
    },
  },
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
        "black",
        "pyright",
        "isort",
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
  {
    "nvim-treesitter/nvim-treesitter",
    opts = {
      ensure_installed = {
        -- defaults 
        "vim",
        "markdown",
        "markdown_inline",
        "lua",

        -- web dev 
        "html",
        "css",
        "javascript",
        "typescript",
        "tsx",
        "json",
        "vue",
      },
    },
  },
}
return plugins
