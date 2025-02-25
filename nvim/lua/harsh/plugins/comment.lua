return {
  "numToStr/Comment.nvim",
  opts = {},

  config = function()
    require("Comment").setup()
    -- Correct way to set keymaps
    vim.keymap.set("n", "<leader>/", function()
      return vim.v.count == 0 and "<Plug>(comment_toggle_linewise_current)" or "gcc"
    end, { expr = true, noremap = true, silent = true, desc = "Toggle Comment" })

    vim.keymap.set(
      "v",
      "<leader>/",
      "<Plug>(comment_toggle_linewise_visual)",
      { noremap = true, silent = true, desc = "Toggle Comment" }
    )
  end,
}
