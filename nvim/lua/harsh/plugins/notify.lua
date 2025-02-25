return {
  "rcarriage/notify.nvim",
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
    level = "ERROR",
  }),
}
