require "nvchad.mappings"
-- add yours here
local map = vim.keymap.set
local keymap = vim.keymap

-- vim.o.foldcolumn='1'
vim.o.foldlevel = 99
vim.o.foldenable = true
vim.o.foldlevelstart = 99

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jj", "<ESC>")

-- ufo set
vim.keymap.set("n", "zR", require("ufo").openAllFolds, { desc = "Open all folds" })
vim.keymap.set("n", "zM", require("ufo").closeAllFolds, { desc = "close all folds" })

keymap.set("n", "zK", function()
  local winid = require("ufo").peekFoldedLinesUnderCursor()
  if not winid then
    vim.lsp.buf.hover()
  end
end, { desc = "Peek fold" })

require("ufo").setup {
  provider_selector = function(bufnr, filetype, buftype)
    return { "lsp", "indent" }
  end,
}

-- increment/decrement numbers
keymap.set("n", "<leader>+", "<C-a>", { desc = "Increment number" }) -- increment
keymap.set("n", "<leader>-", "<C-x>", { desc = "Decrement number" }) -- decrement

-- window management
keymap.set("n", "<leader>sv", "<C-w>v", { desc = "Split window vertically" }) -- split window vertically
keymap.set("n", "<leader>sh", "<C-w>s", { desc = "Split window horizontally" }) -- split window horizontally
keymap.set("n", "<leader>se", "<C-w>=", { desc = "Make splits equal size" }) -- make split windows equal width & height
keymap.set("n", "<leader>sx", "<cmd>close<CR>", { desc = "Close current split" }) -- close current split window

keymap.set("n", "<leader>to", "<cmd>tabnew<CR>", { desc = "Open new tab" }) -- open new tab
keymap.set("n", "<leader>tx", "<cmd>tabclose<CR>", { desc = "Close current tab" }) -- close current tab
keymap.set("n", "<leader>tn", "<cmd>tabn<CR>", { desc = "Go to next tab" }) --  go to next tab
keymap.set("n", "<leader>tp", "<cmd>tabp<CR>", { desc = "Go to previous tab" }) --  go to previous tab
keymap.set("n", "<leader>tf", "<cmd>tabnew %<CR>", { desc = "Open current buffer in new tab" }) --  move current buffer to new tab

-- close all buffers
keymap.set("n", "<leader>bd", "<cmd>bufdo bd<CR>", { desc = "Close all buffers" })

-- diable auto comment
vim.cmd [[ autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o ]]

-- Telescope
keymap.set("n", "<leader>ft", ":TodoTelescope<CR>", { desc = "Open TODO Telescope" })

keymap.set("n", "=", [[<cmd>vertical resize +5<cr>]]) -- make the window biger vertically
keymap.set("n", "-", [[<cmd>vertical resize -5<cr>]]) -- make the window smaller vertically
keymap.set("n", "+", [[<cmd>horizontal resize +2<cr>]]) -- make the window bigger horizontally by pressing shift and =
keymap.set("n", "_", [[<cmd>horizontal resize -2<cr>]]) -- make the window smaller horizontally by pressing shift and -

-- undoTree
keymap.set("n", "<leader>u", vim.cmd.UndotreeToggle, { desc = "toggle undo tree" })

-- move lines
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- clipboard toogle

local clipboard_toggle = true
vim.keymap.set("n", "<leader>cb", function()
  if clipboard_enabled then
    vim.opt.clipboard = ""
    print "Clipboard: DISABLED (using unnamed/normal register)"
  else
    vim.opt.clipboard = "unnamedplus"
    print "Clipboard: ENABLED (using system clipboard)"
  end
  clipboard_enabled = not clipboard_enabled
end, { desc = "Toggle clipboard mode" })


-- register
vim.keymap.set('n', '<leader>rg', ':registers<CR>', { desc = "Show all registers" })

vim.keymap.set('n', '<leader>rr', function()
  for reg = string.byte('a'), string.byte('z') do
    vim.fn.setreg(string.char(reg), '')
  end
  print("All registers a–z cleared")
end, { desc = "Reset all a-z registers" })


