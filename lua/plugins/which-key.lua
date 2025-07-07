return {
  "folke/which-key.nvim",
  event = "VeryLazy",

  opts = {
    spec = {
      {
        "<leader>g",
        name = "Git",
      },
      {
        "<leader>s",
        name = "Session",
      },
      {
        "<leader>c",
        name = "Code",
      },
      {
        "<leader>f",
        name = "File",
      },
      {
        "<leader>b",
        name = "Buffer",
      },
      {
        "<leader>q",
        name = "Quit",
      },
      {
        "<leader>?",
        name = "Help",
      },
    },
  },

  keys = {
    {
      "<leader>?",
      function()
        require("which-key").show { global = false }
      end,
      desc = "Buffer Local Keymaps (which-key)",
    },
  },
}
