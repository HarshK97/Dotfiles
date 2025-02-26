return {
  "rcarriga/nvim-notify",
  require("notify").setup({
    stages = "fade_in_slide_out",
    timeout = 1000,
    background_colour = "#000000",
    minimum_width = 50,
    icons = {
      ERROR = "",
      WARN = "",
      INFO = "",
      DEBUG = "",
      TRACE = "✎",
    },
    -- Set the level to "ERROR" to only show error notifications
    level = "WARN",
  }),
  vim.api.nvim_set_keymap("n", "<leader>nn", ":Telescope notify <CR>", { noremap = true, silent = true }),
}
