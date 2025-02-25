return {
  "akinsho/nvim-toggleterm.lua",
  version = "*",
  config = function()
    require("toggleterm").setup({
      size = 20,
      open_mapping = [[<<leader>tt]],
      direction = "float",
      vim.api.nvim_set_keymap(
        "n",
        "<leader>tt",
        "<cmd>lua require('toggleterm').toggle()<CR>",
        { noremap = true, silent = true }
      ),
      vim.api.nvim_set_keymap(
        "t",
        "<C-q>",
        "<cmd>lua require('toggleterm').close()<CR>",
        { noremap = true, silent = true }
      ),
    })
  end,
}
