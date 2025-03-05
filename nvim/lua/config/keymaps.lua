-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
vim.keymap.set("i", "jj", "<ESC>", { desc = "Escape Insert mode with jj" })
vim.keymap.set("n", "<leader>ll", ":Lazy<CR>", { desc = "Lazy" })
vim.api.nvim_set_keymap("n", "<leader>ls", ":LiveServerStart <CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<leader>lq", ":LiveServerStop <CR>", { noremap = true, silent = true })
vim.keymap.set("n", "<leader>l", "lol<CR>", { desc = "Lazy and Live Server" })
