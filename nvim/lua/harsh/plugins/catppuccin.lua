return {
  {
    "catppuccin/nvim",
    name = "catppuccin",
    lazy = false, -- Ensures it loads immediately
    priority = 1000, -- Loads before other plugins
    config = function()
      require("catppuccin").setup({
        flavour = "mocha",
        integrations = {
          mason = true,
          noice = true,
          notify = true,
        },
        vim.cmd.colorscheme("catppuccin"),
      })
    end,
  },
}
