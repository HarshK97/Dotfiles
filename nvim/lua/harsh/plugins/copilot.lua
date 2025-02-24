return {
  "github/copilot.vim",
  config = function()
    -- Automatically enable Copilot for every buffer except for C++ files
    vim.api.nvim_create_autocmd("BufEnter", {
      pattern = "*",
      callback = function()
        if vim.bo.filetype ~= "cpp" then
          vim.cmd("Copilot enable")
        end
      end,
    })
  end,
}
