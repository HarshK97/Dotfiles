return {
  "barrett-ruth/live-server.nvim",
  name = "live-server",
  build = "npm install -g live-server",
  cmd = { "LiveServerStart", "LiveServerStop" },
  config = function() require("live-server").setup {} end,
  vim.api.nvim_set_keymap("n", "ls", ":LiveServerStart<CR>", {
    noremap = true,
    silent = true,
  }),
  vim.api.nvim_set_keymap("n", "lq", ":LiveServerStop<CR>", {
    noremap = true,
    silent = true,
  }),
}
