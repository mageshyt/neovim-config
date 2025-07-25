require "nvchad.options"



-- backspace
-- FUNCTIONS

local opt = vim.opt
local keymap = vim.keymap

vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1
-- BACKUPS
opt.swapfile = false
opt.backup = false
-- opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
opt.undofile = true

-- BASIC
opt.relativenumber = true
opt.number = true
opt.autoindent = true -- copy indent from current line when starting new one
opt.wrap = false

opt.backspace = "indent,eol,start" -- allow backspace on indent, end of line or insert mode start position
opt.hlsearch = false
opt.incsearch = true

opt.scrolloff = 8
opt.updatetime = 50
vim.opt.isfname:append("@-@")

-- SEARCH SETTINGS
opt.ignorecase = true -- ignore case while searching 
opt.smartcase = true 
opt.cursorline = false-- highlight current line


-- COLOR SETTINGS
opt.termguicolors = true
opt.background = "dark"
opt.signcolumn = "yes"

-- SPLIT WINDOW
opt.splitright = true
opt.splitbelow = true

-- BACKSPACE
opt.backspace = "indent,eol,start" -- allow backspace on indent, end of line or insert mode start position

-- CLIPBOARD
opt.clipboard= "unnamedplus" -- use system clipboard
