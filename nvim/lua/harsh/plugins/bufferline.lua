return {
  "akinsho/bufferline.nvim",
  dependencies = { "nvim-tree/nvim-web-devicons", "catppuccin/nvim" },
  version = "*",
  -- opts = {
  --   options = {
  --     mode = "tabs",
  --     offsets = {
  --       {
  --         filetype = "NvimTree",
  --         text = "File Explorer",
  --         highlight = "Directory",
  --         text_align = "center",
  --       },
  --     },
  --     show_close_icon = false,
  --     diagnostics = "nvim_lsp",
  --     diagnostics_indicator = function(count, level, diagnostics_dict, context)
  --       local icon = level:match("error") and " " or " "
  --       return " " .. icon .. count
  --     end,
  --   },
  -- },
  config = function()
    require("bufferline").setup({
      options = {
        mode = "tabs",
        offsets = {
          {
            filetype = "NvimTree",
            text = "File Explorer",
            highlight = "Directory",
            text_align = "center",
          },
        },
        show_close_icon = false,
        diagnostics = "nvim_lsp",
        diagnostics_indicator = function(count, level, diagnostics_dict, context)
          local icon = level:match("error") and " " or " "
          return " " .. icon .. count
        end,
      },
      highlights = require("catppuccin.groups.integrations.bufferline").get("mocha"),
    })
  end,
}
