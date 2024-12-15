require("telescope").setup {
  defaults = {
    file_ignore_patterns = {
      "node_modules",
    },
    layout_strategy = "flex",
    layout_config = {
      preview_width = 0.65,
      horizontal = {
        size = {
          width = "95%",
          height = "95%",
        },
      },
    },
    pickers = {
      find_files = {
        theme = "dropdown",
      },
    },
  },
}
