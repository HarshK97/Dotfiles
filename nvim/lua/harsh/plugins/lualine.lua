return {
  "nvim-lualine/lualine.nvim",
  dependencies = { "catppuccin/nvim" },
  config = function()
    require("catppuccin").setup({ flavour = "mocha" })
    vim.cmd.colorscheme("catppuccin")

    local colors = require("catppuccin.palettes").get_palette("mocha")

    local custom_theme = {
      normal = {
        a = { bg = colors.blue, fg = colors.base, gui = "bold" },
        b = { bg = colors.surface0, fg = colors.text },
        c = { bg = colors.mantle, fg = colors.subtext1 },
      },
      insert = { a = { bg = colors.green, fg = colors.base, gui = "bold" } },
      visual = { a = { bg = colors.pink, fg = colors.base, gui = "bold" } },
      replace = { a = { bg = colors.red, fg = colors.base, gui = "bold" } },
      command = { a = { bg = colors.peach, fg = colors.base, gui = "bold" } },
      inactive = {
        a = { bg = colors.mantle, fg = colors.overlay0 },
        b = { bg = colors.mantle, fg = colors.overlay0 },
        c = { bg = colors.mantle, fg = colors.overlay0 },
      },
    }

    require("lualine").setup({
      options = {
        theme = custom_theme,
        component_separators = { left = "", right = "" },
        section_separators = { left = "", right = "" },
        icons_enabled = true,
        globalstatus = true,
      },
      sections = {
        lualine_a = { { "mode", icon = "󰚩 " } }, -- JetBrains Emoji
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
