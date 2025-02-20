return {
  {
    "github/copilot.vim",
    name = "copilot",
    config = function()
      vim.g.copilot_no_tab_map = true -- Disable Copilot's default Tab mapping
      vim.g.copilot_filetypes = { cpp = false } -- Disable Copilot for C++ files

      -- Map <Tab><Enter> to accept Copilot's suggestion
      vim.api.nvim_set_keymap(
        "i",
        "<Tab><CR>",
        'copilot#Accept("\\<CR>")',
        { expr = true, silent = true, noremap = true }
      )
    end,
  },
}
