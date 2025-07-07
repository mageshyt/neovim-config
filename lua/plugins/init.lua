return {
  {
    "stevearc/conform.nvim",
  },
  {
    "norcalli/nvim-colorizer.lua",
    config = function()
      require("colorizer").setup()
    end,
  },
  -- These are some examples, uncomment them if you want to see them work!
  {
    "neovim/nvim-lspconfig",
    config = function()
      require "configs.lspconfig"
    end,
  },
  {
    "github/copilot.vim",
    lazy = false,
  },
  {
    "okuuva/auto-save.nvim",
    cmd = "ASToggle", -- optional for lazy loading on command
    event = { "InsertLeave", "TextChanged" }, -- optional for lazy loading on trigger events
    opts = {
      -- your config goes here
      -- or just leave it empty :)
    },
  },
  {
    "mfussenegger/nvim-jdtls",
  },
  -- Masion
  {
    "williamboman/mason.nvim",
    opts = {
      ensure_installed = {
        "eslint-lsp",
        "pyright",
        "prettier",
        "tailwindcss-language-server",
        "typescript-language-server",
        "css-lsp",
        "gopls",
        "mypy",
        "ruff",
        "black",
      },
    },
  },
}
