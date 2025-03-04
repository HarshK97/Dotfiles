return {
  "andrew-george/telescope-themes",
  config = function()
    local builtin_schemes = require("telescope.themes").get_dropdown({
      winblend = 10,
      border = true,
      previewer = true,
      layout_config = {
        width = 0.5,
        height = 0.5,
      },
      extensions = {
        themes = {
          enable_live_preview = true,
        },
      },
    })
    require("telescope").load_extension("themes")
    vim.keymap.set("n", "<leader>fm", "<cmd>Telescope themes<cr>", { desc = "Find theme" })
  end,
}
