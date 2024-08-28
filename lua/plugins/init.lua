return {
  {
    "stevearc/conform.nvim",
    -- event = 'BufWritePre', -- uncomment for format on save
    opts = require "configs.conform",
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
  },{
    "williamboman/mason.nvim",
    opts = {
      ensure_installed ={
        "eslint-lsp",
        "pyright",
        "prettier",
        "tailwindcss-language-server",
        "typescript-language-server",
      }
    },
  },
  {
    "windwp/nvim-ts-autotag",
    ft={
      "javascript",
      "typescript",
      "javascriptreact",
      "typescriptreact",
      "html",
    },
    config=function()
      require('nvim-ts-autotag').setup()
    end
  },
  {
  	"nvim-treesitter/nvim-treesitter",
  	opts = {
  		ensure_installed = {
  			"vim", "lua", "vimdoc",
       "html", "css",
        "javascript", "typescript",
        "tsx","go" ,"rust"
  		},
  	},
  },
}
