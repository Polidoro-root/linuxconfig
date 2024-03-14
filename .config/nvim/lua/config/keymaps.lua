-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

-- delete CTRL + S to save file
vim.keymap.del({ "i", "x", "n", "s" }, "<C-s>")

-- map <leader> + w to save file
vim.keymap.set("n", "<leader>w", "<cmd>w<cr><esc>")

-- map Lexplore to <leader> + e
vim.keymap.set("n", "<leader>e", "<cmd>Lexplore<cr>")
