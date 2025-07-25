return {
  "AckslD/nvim-neoclip.lua",
  lazy = false,
  dependencies = {
    { "nvim-telescope/telescope.nvim" },
  },
  config = function()
    require "configs.neoclip"
  end,
}
