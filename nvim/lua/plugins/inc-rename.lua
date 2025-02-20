return {
  "smjonas/inc-rename.nvim",
  lazy = false, -- Ensure it's loaded immediately
  config = function()
    require("inc_rename").setup() -- Fix module name typo (use underscore)
    vim.keymap.set(
      "n",
      "<leader>rn",
      function() return ":IncRename " .. vim.fn.expand "<cword>" end,
      { expr = true, silent = true }
    )
  end,
}
