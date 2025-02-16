return {
  "brenoprata10/nvim-highlight-colors",
  name = "highlight-colors",
  opts = {}, -- Add custom options if needed
  config = function(_, opts)
    vim.opt.termguicolors = true
    require("nvim-highlight-colors").setup(opts) -- Correct module name
  end,
}
