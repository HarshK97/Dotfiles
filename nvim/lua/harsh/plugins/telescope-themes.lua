return {
  "andrew-george/telescope-themes",
  config = function()
    local builtin_schemes = require("telescope.themes").get_dropdown({
      winblend = 10,
      border = true,
      previewer = false,
      layout_config = {
        width = 0.5,
        height = 0.5,
      },
      enable_live_preview = true,
    })
  end,
}
