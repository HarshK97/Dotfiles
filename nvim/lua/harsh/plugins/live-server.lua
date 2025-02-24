return {
  "barrett-ruth/live-server.nvim",
  build = "npm add -g live-server",
  cmd = {
    "LiveServerStart",
    "LiveServerStop",
  },
  config = true,

  vim.api.nvim_set_keymap("n", "<leader>ls", ":LiveServerStart <CR>", { noremap = true, silent = true }),
  vim.api.nvim_set_keymap("n", "<leader>lq", ":LiveServerStop <CR>", { noremap = true, silent = true }),
}
