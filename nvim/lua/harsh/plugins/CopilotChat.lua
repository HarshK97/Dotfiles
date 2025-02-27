return {
  {
    "CopilotC-Nvim/CopilotChat.nvim",
    build = function()
      -- Manually rebuild and install the plugin
      vim.cmd("UpdateRemotePlugins")
    end,
    event = "VeryLazy",
    dependencies = {
      { "github/copilot.vim" },
      { "nvim-lua/plenary.nvim" },
    },
    config = function()
      -- First check that the module exists
      local status_ok, copilot_chat = pcall(require, "CopilotChat")
      if not status_ok then
        vim.notify("CopilotChat module not found", vim.log.levels.ERROR)
        return
      end

      copilot_chat.setup({
        debug = false, -- Enable debug logging
        notify = false,
      })

      vim.keymap.set("n", "<leader>cc", function()
        vim.ui.input({ prompt = "Copilot Chat: " }, function(prompt)
          if prompt and prompt ~= "" then
            vim.cmd("CopilotChat " .. prompt)
          end
        end)
      end, { desc = "Copilot Chat prompt" })

      vim.keymap.set("n", "<leader>ct", function()
        copilot_chat.toggle()
      end, { desc = "Toggle Copilot Chat" })
    end,
  },
}
