return {
  "rcarriga/nvim-notify",
  require("notify").setup({
    stages = "fade_in_slide_out",
    timeout = 500,
    background_colour = "#000000",
    minimum_width = 50,
    icons = {
      ERROR = " ",
      WARN = " ",
      INFO = " ",
      DEBUG = " ",
      TRACE = " ",
    },
    levels = { "ERROR", "WARN", "INFO", "DEBUG", "TRACE" },
  }),
  vim.api.nvim_set_keymap("n", "<leader>nn", ":Telescope notify <CR>", { noremap = true, silent = true }),
  vim.keymap.set("n", "<leader>n", "<cmd>Notify<cr>", { desc = " Notification" }),
}
