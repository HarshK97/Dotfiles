return {
  "goolord/alpha-nvim",
  event = "VimEnter",
  enabled = true,
  init = false,
  opts = function()
    local dashboard = require("alpha.themes.dashboard")

    dashboard.section.header.val = {
      "                                ",
      "           ▄▄▄▄▄▄▄▄▄            ",
      "        ▄█████████████▄          ",
      "█████  █████████████████  █████  ",
      "▐████▌ ▀███▄       ▄███▀ ▐████▌  ",
      " █████▄  ▀███▄   ▄███▀  ▄█████    ",
      " ▐██▀███▄  ▀███▄███▀  ▄███▀██▌   ",
      "  ███▄▀███▄  ▀███▀  ▄███▀▄███    ",
      "  ▐█▄▀█▄▀███ ▄ ▀ ▄ ███▀▄█▀▄█▌    ",
      "   ███▄▀█▄██ ██▄██ ██▄█▀▄███      ",
      "    ▀███▄▀██ █████ ██▀▄███▀      ",
      "   █▄ ▀█████ █████ █████▀ ▄█      ",
      "   ███        ███        ███      ",
      "   ███▄    ▄█ ███ █▄    ▄███      ",
      "   █████ ▄███ ███ ███▄ █████      ",
      "   █████ ████ ███ ████ █████      ",
      "   █████ ████▄▄▄▄▄████ █████      ",
      "    ▀███ █████████████ ███▀      ",
      "      ▀█ ███ ▄▄▄▄▄ ███ █▀        ",
      "         ▀█▌▐█████▌▐█▀            ",
      "            ███████              ",
    }
    -- stylua: ignore
    dashboard.section.buttons.val = {
      dashboard.button("f", " " .. " Find file",       "<cmd> lua LazyVim.pick()() <cr>"),
      dashboard.button("n", " " .. " New file",        [[<cmd> ene <BAR> startinsert <cr>]]),
      dashboard.button("r", " " .. " Recent files",    [[<cmd> lua LazyVim.pick("oldfiles")() <cr>]]),
      dashboard.button("g", " " .. " Find text",       [[<cmd> lua LazyVim.pick("live_grep")() <cr>]]),
      dashboard.button("c", " " .. " Config",          "<cmd> lua LazyVim.pick.config_files()() <cr>"),
      dashboard.button("s", " " .. " Restore Session", [[<cmd> lua require("persistence").load() <cr>]]),
      dashboard.button("x", " " .. " Lazy Extras",     "<cmd> LazyExtras <cr>"),
      dashboard.button("l", "󰒲 " .. " Lazy",            "<cmd> Lazy <cr>"),
      dashboard.button("q", " " .. " Quit",            "<cmd> qa <cr>"),
    }
    for _, button in ipairs(dashboard.section.buttons.val) do
      button.opts.hl = "AlphaButtons"
      button.opts.hl_shortcut = "AlphaShortcut"
    end
    local quotes = {
      "Freedom is the right of all sentient beings. - Optimus Prime",
      "Fate rarely calls upon us at a moment of our choosing. - Optimus Prime",
      "Autobots, roll out! - Optimus Prime",
      "There's a thin line between being a hero and being a memory. - Optimus Prime",
      "One shall stand, one shall fall. - Optimus Prime",
      "Sometimes even the wisest of men and machines can be in error. - Optimus Prime",
      "In any war, there are calms between storms. - Optimus Prime",
      "There's a difference between being alive and living. - Optimus Prime",
      "You may lose your faith in us, but never in yourselves. - Optimus Prime",
      "At the end of this day, one shall stand, one shall fall! - Optimus Prime",
      "Honor, without it, I am nothing. - Optimus Prime",
      "Honor to the end. - Optimus Prime",
      "We are here, we are waiting. - Optimus Prime",
    }

    -- Pick a random quote
    math.randomseed(os.time())
    local footer_text = quotes[math.random(#quotes)]

    dashboard.section.footer.val = footer_text
    dashboard.section.header.opts.hl = "AlphaHeader"
    dashboard.section.buttons.opts.hl = "AlphaButtons"
    dashboard.opts.layout[1].val = 8
    return dashboard
  end,
  config = function(_, dashboard)
    -- close Lazy and re-open when the dashboard is ready
    if vim.o.filetype == "lazy" then
      vim.cmd.close()
      vim.api.nvim_create_autocmd("User", {
        once = true,
        pattern = "AlphaReady",
        callback = function()
          require("lazy").show()
        end,
      })
    end

    require("alpha").setup(dashboard.opts)

    -- vim.api.nvim_create_autocmd("User", {
    --   once = true,
    --   pattern = "LazyVimStarted",
    --   callback = function()
    --     local stats = require("lazy").stats()
    --     local ms = (math.floor(stats.startuptime * 100 + 0.5) / 100)
    --     dashboard.section.footer.val = "⚡ Neovim loaded "
    --       .. stats.loaded
    --       .. "/"
    --       .. stats.count
    --       .. " plugins in "
    --       .. ms
    --       .. "ms"
    --     pcall(vim.cmd.AlphaRedraw)
    --   end,
    -- })
  end,
}
