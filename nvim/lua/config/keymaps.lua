-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
vim.keymap.set("i", "jj", "<ESC>", { desc = "Escape Insert mode with jj" })
vim.keymap.set("n", "<leader>ll", ":Lazy<CR>", { desc = "Lazy" })
vim.api.nvim_set_keymap("n", "<leader>ls", ":LiveServerStart <CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<leader>lq", ":LiveServerStop <CR>", { noremap = true, silent = true })
vim.keymap.set("n", "<leader>l", "lol<CR>", { desc = "Lazy and Live Server" })
vim.keymap.set("n", "<leader>fh", "<cmd>Themery<CR>", { desc = "Select Themes" })
vim.keymap.set("n", "<leader>cw", "<C-w>w", { desc = "Switch between windows" })

-- Obsidian
vim.keymap.set("v", "<leader>o", "", { desc = "Obsidian" })
vim.keymap.set("v", "<leader>ol", "<cmd>ObsidianLink<CR>", { desc = "Obsidian Link" })
function CreateNewObsidianNote()
  local title = vim.fn.input("Note Title: ", os.date("%Y-%m-%d"))
  vim.cmd("ObsidianNew " .. title)
end

vim.api.nvim_set_keymap(
  "n",
  "<leader>on",
  ":lua CreateNewObsidianNote()<CR>",
  { noremap = true, silent = false, desc = "Obsidian New Note" }
)
