return {
  'rmagatti/auto-session',
  lazy = false,
  dependencies = {
    'nvim-telescope/telescope.nvim', -- Only needed if you want to use session lens
  },

  ---enables autocomplete for opts
  ---@module "auto-session"
  ---@type AutoSession.Config
  opts = {
    suppressed_dirs = { '~/', '~/Projects', '~/Downloads', '/Volumes/CodeHub/','/Volumes/Project-2/','/Volumes/Project/' },
    -- log_level = 'debug',
    session_lens = {
      -- If load_on_setup is false, make sure you use `:SessionSearch` to open the picker as it will initialize everything first
      load_on_setup = true,
      previewer = false,
      mappings = {
        -- Mode can be a string or a table, e.g. {"i", "n"} for both insert and normal mode
        delete_session = { "i", "<C-D>" },
        alternate_session = { "i", "<C-S>" },
      },
      -- Can also set some Telescope picker options
      theme_conf = {
        border = true,
        -- layout_config = {
        --   width =0.8, -- Can set width and height as percent of window
        --   height = 0.5,
        -- },
      },
    },
  }
}
