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

      -- Setup CopilotChat with specified options
      copilot_chat.setup({
        debug = false, -- Enable debug logging
        notify = false,
      })

      -- Keymap to prompt for Copilot Chat input
      vim.keymap.set({ "n", "v" }, "<leader>cc", function()
        vim.ui.input({ prompt = "Copilot Chat: " }, function(prompt)
          if prompt and prompt ~= "" then
            vim.cmd("CopilotChat " .. prompt)
          end
        end)
      end, { desc = "Copilot Chat prompt" })

      -- Keymap to toggle Copilot Chat
      vim.keymap.set("n", "<leader>ct", function()
        copilot_chat.toggle()
      end, { desc = "Toggle Copilot Chat" })

      -- Keymap to generate commit and tests
      vim.keymap.set("n", "<leader>cg", "", { desc = "Generate Commit and Tests" })

      -- Keymap to explain selected code
      vim.keymap.set({ "n", "v" }, "<leader>ce", "<cmd>CopilotChatExplain<CR>", { desc = "Explain Selected Code" })

      -- Keymap to commit selected code
      vim.keymap.set("n", "<leader>cgc", "<cmd>CopilotChatCommit<CR>", { desc = "Commit Selected Code" })

      -- Keymap to generate documentation for selected code
      vim.keymap.set(
        { "n", "v" },
        "<leader>cd",
        "<cmd>CopilotChatDocs<CR>",
        { desc = "Documentation for Selected Code" }
      )

      -- Keymap to generate tests for selected code
      vim.keymap.set("n", "<leader>cgt", "<cmd>CopilotChatTests<CR>", { desc = "Generate Tests for Selected Code" })

      -- Keymap to review code
      vim.keymap.set("n", "<leader>cr", "<cmd>CopilotChatReview<CR>", { desc = "Review Code" })
    end,
  },
}
