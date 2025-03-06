return {
  { "catppuccin/nvim" },
  { "folke/tokyonight.nvim" },
  { "Mofiqul/dracula.nvim" },
  { "EdenEast/nightfox.nvim" },
  { "bluz71/vim-moonfly-colors" },
  { "projekt0n/github-nvim-theme" },
  { "sainnhe/sonokai" },
  { "olimorris/onedarkpro.nvim" },
  { "gbprod/nord.nvim" },
  { "sainnhe/edge" },
  { "nyoom-engineering/oxocarbon.nvim" },
  { "scottmckendry/cyberdream.nvim" },
  {
    "zaldih/themery.nvim",
    lazy = false,
    config = function()
      require("themery").setup({
        -- add the config here
        themes = {
          "catppuccin",
          "tokyonight",
          "cyberdream",
          "dracula",
          "carbonfox",
          "duskfox",
          "terafox",
          "nordfox",
          "moonfly",
          "github_dark_high_contrast",
          "github_dark",
          "sonokai",
          "onedark",
          "onedark_vivid",
          "onedark_dark",
          "nord",
          "edge",
          "oxocarbon",
        },
        livePreview = true,
      })
    end,
  },
}
