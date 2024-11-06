return {
  {
    "stevearc/conform.nvim",
  },
  {
    "nvimtools/none-ls.nvim",
    event = "VeryLazy",
    opts = function()
      return require "configs.null-ls"
    end,
  },
  {
    "jellydn/quick-code-runner.nvim",
    dependencies = { "MunifTanjim/nui.nvim" },
    opts = {
      debug = true,
    },
    cmd = { "QuickCodeRunner", "QuickCodePad" },
    keys = {
      {
        "<leader>cp",
        ":QuickCodePad<CR>",
        desc = "Quick Code Pad",
      },
      {
        "<leader>cr",
        "gg0vGg$:QuickCodeRunner<CR>",
        desc = "Quick File Code Runner",
        mode = "n",
      },
    },
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
        "gopls",
      },
    },
  },
  -- Auto Tag
  {
    "windwp/nvim-ts-autotag",
    ft = {
      "javascript",
      "typescript",
      "javascriptreact",
      "typescriptreact",
      "html",
    },
    config = function()
      require("nvim-ts-autotag").setup {
        opts = {
          -- Defaults
          enable_close = true, -- Auto close tags
          enable_rename = true, -- Auto rename pairs of tags
          enable_close_on_slash = false, -- Auto close on trailing </
        },
        per_filetype = {
          ["html"] = {
            enable_close = false,
          },
        },
      }
    end,
  },
  -- TREE SITTER
  {
    "nvim-treesitter/nvim-treesitter",
    opts = {
      ensure_installed = {
        "vim",
        "lua",
        "vimdoc",
        "html",
        "css",
        "javascript",
        "typescript",
        "tsx",
        "go",
        "rust",
      },
    },
  },
}
