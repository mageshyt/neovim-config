-- This file needs to have same structure as nvconfig.lua
-- https://github.com/NvChad/ui/blob/v2.5/lua/nvconfig.lua

---@class ChadrcConfig
local M = {}

M.lsp = { signature = false }
M.base46 = {
  theme = "pastelDark",
  transparency = true,
}


M.ui = {

  statusline = {
    theme = "minimal", -- default/vscode/vscode_colored/minimal
    separator_style = "round",
    modules = nil,
    order = nil,
  },
  cmp = {
    style = "default",
    icons = true,
    icons_left = true,
    lspkind_text = true,
    format_colors = {
      tailwind = true,
    },
  },
}

M.nvdash = {
  load_on_startup = false,
  header = {
    "▄▄   ▄▄ ▄▄▄▄▄▄ ▄▄▄▄▄▄▄ ▄▄▄▄▄▄▄ ▄▄▄▄▄▄▄ ▄▄   ▄▄",
    "█  █▄█  █      █       █       █       █  █ █  █",
    "█       █  ▄   █   ▄▄▄▄█    ▄▄▄█  ▄▄▄▄▄█  █▄█  █",
    "█       █ █▄█  █  █  ▄▄█   █▄▄▄█ █▄▄▄▄▄█       █",
    "█       █      █  █ █  █    ▄▄▄█▄▄▄▄▄  █   ▄   █",
    "█ ██▄██ █  ▄   █  █▄▄█ █   █▄▄▄ ▄▄▄▄▄█ █  █ █  █",
    "█▄█   █▄█▄█ █▄▄█▄▄▄▄▄▄▄█▄▄▄▄▄▄▄█▄▄▄▄▄▄▄█▄▄█ █▄▄█",

    "                                             ",
  },
  buttons = {
    { txt = "  Find File", keys = "ff", cmd = "Telescope find_files" },
    { txt = "  Recent Files", keys = "fo", cmd = "Telescope oldfiles" },
    { txt = "󰈭  Find Word", keys = "fw", cmd = "Telescope live_grep" },
    { txt = "󱥚  Themes", keys = "th", cmd = ":lua require('nvchad.themes').open()" },
    { txt = "  Mappings", keys = "ch", cmd = "NvCheatsheet" },
    { txt = "─", hl = "NvDashLazy", no_gap = true, rep = true },

    {
      txt = function()
        local stats = require("lazy").stats()
        local ms = math.floor(stats.startuptime) .. " ms"
        return "  Loaded " .. stats.loaded .. "/" .. stats.count .. " plugins in " .. ms
      end,
      hl = "NvDashLazy",
      no_gap = true,
    },

    { txt = "─", hl = "NvDashLazy", no_gap = true, rep = true },
  },
}

M.cpilot = {
  i = {
    ["<C-l>"] = {
      function()
        vim.fn.feedkeys(vim.fn["copilot#Accept"](), "")
      end,
      "Copilot Accept",
      { replace_keycodes = true, nowait = true, silent = true, expr = true, noremap = true },
    },
  },
}

return M
