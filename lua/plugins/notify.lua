return {
  "rcarriga/nvim-notify",
  event = "VeryLazy",
  opts = {
    module = "notify",
  },
  config = function()
    require("notify").setup {
      stages = "fade",
      timeout = 3000,
      background_colour = "#000000",
      render="wrapped-compact",
      top_down=false
    }
  end,
}
