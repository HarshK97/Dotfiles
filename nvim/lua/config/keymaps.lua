-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
--

local keymap = vim.keymap.set

-- Bold (**text**)
keymap("i", "s2", "**", { desc = "Insert bold formatting" })

-- Italic (*text*)
keymap("i", "s1", "*", { desc = "Insert italic formatting" })

-- Bold & Italic (***text***)
keymap("i", "s3", "***", { desc = "Insert bold & italic formatting" })

-- Strikethrough (~~text~~)
keymap("i", "sss", "~~", { desc = "Insert strikethrough formatting" })

-- Underline (<u>text</u>)
keymap("i", "uuu", "<u></u>", { desc = "Insert underline formatting" })

keymap("i", "jj", "<ESC>", { desc = "Escape Insert mode with jj" })
keymap("n", "<leader>uu", "g~l", { desc = "Toggle case of current letter" })

keymap("n", "<leader>ll", ":Lazy<CR>", { desc = "Lazy" })
vim.api.nvim_set_keymap("n", "<leader>ls", ":LiveServerStart <CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<leader>lq", ":LiveServerStop <CR>", { noremap = true, silent = true })
keymap("n", "<leader>l", "lol<CR>", { desc = "Lazy and Live Server" })
keymap("n", "<leader>fh", "<cmd>Themery<CR>", { desc = "Select Themes" })
keymap("n", "<leader>cw", "<C-w>w", { desc = "Switch between windows" })

-- Obsidian
keymap("v", "<leader>o", "", { desc = "Obsidian" })
keymap("v", "<leader>ol", "<cmd>ObsidianLink<CR>", { desc = "Obsidian Link" })
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
keymap("n", "<leader>oo", "<cmd>ObsidianOpen<CR>", { desc = "Open Current Note in Obsidian" })
