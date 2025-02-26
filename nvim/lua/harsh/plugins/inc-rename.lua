return {
  "smjonas/inc-rename.nvim",
  config = function()
    require("inc_rename").setup({})
  end,
  vim.keymap.set("n", "<leader>rn", function()
    return ":IncRename " .. vim.fn.expand("<cword>")
  end, { expr = true, desc = "Increment rename the current word" }),
  vim.keymap.set("n", "<leader>r", "Lol", { desc = " Rename and Restart Lsp" }),
}
