return {
  "nvim-lualine/lualine.nvim",
  dependencies = { "scottmckendry/cyberdream.nvim" },
  config = function()
    require("lualine").setup({
      options = {
        theme = "auto",
        component_separators = { left = "", right = "" },
        section_separators = { left = "", right = "" },
        icons_enabled = true,
        globalstatus = true,
      },
      sections = {
        lualine_a = { { "mode", icon = " " } }, -- JetBrains Emoji
        lualine_b = { { "branch", icon = "" }, "diff", "diagnostics" },
        lualine_c = { { "filename", icon = "󰈙" } },
        lualine_x = { "filetype" },
        lualine_y = { { "progress", icon = "󰘬" } },
        lualine_z = { { "location", icon = "" } },
      },
      inactive_sections = {
        lualine_c = { { "filename", path = 1 } },
        lualine_x = { "location" },
      },
    })
  end,
}
