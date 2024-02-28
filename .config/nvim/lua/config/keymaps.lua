-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua

local Util = require("lazyvim.util")
local lazyterm = function()
  Util.terminal(nil, { cwd = Util.root() })
end

vim.keymap.set("n", "<c-7>", lazyterm, { desc = "Terminal (root dir)" })
vim.keymap.set("t", "<C-7>", "<cmd>close<cr>", { desc = "Hide Terminal" })

vim.keymap.set("n", "<A-left>", "<cmd>bprevious<cr>", { desc = "Prev buffer" })
vim.keymap.set("n", "<A-right>", "<cmd>bnext<cr>", { desc = "Next buffer" })

vim.keymap.set("n", "ß", "$", { desc = "Go to end of line" })
