return {
  {
    "stevearc/conform.nvim",
    -- event = 'BufWritePre', -- uncomment for format on save opts = require "configs.conform",
  },
  {
    "nvimtools/none-ls.nvim",
    event = "VeryLazy",
    opts = function()
      return require "configs.null-ls"
end,
  },
  -- Code Runner
  {
    "CRAG666/code_runner.nvim",
    config = true,
    cmd="RunCode",
    opts={
      mode="better_term",
    }

  },
  {
    'norcalli/nvim-colorizer.lua',
    config = function()
      require('colorizer').setup()
    end
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
      ensure_installed ={
        "eslint-lsp",
        "pyright",
        "prettier",
        "tailwindcss-language-server",
        "typescript-language-server",
      }
    },
  },
  -- Auto Tag
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
  -- File Tree
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
  -- {
  --   "hrsh7th/nvim-cmp",
  --
  --   config = function()
  --     require "configs.cmp"
  --   end,
  --
  -- },
}


