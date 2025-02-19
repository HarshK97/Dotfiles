return {
  {
    "goolord/alpha-nvim",
    event = "VimEnter",
    config = function()
      local alpha = require "alpha"
      local dashboard = require "alpha.themes.dashboard"

      -- Custom ASCII Art Header
      dashboard.section.header.val = {

        "      ████████████████████████████████████████████████████████████████████████████",
        "      █─▄─▄─█▄─▄▄▀██▀▄─██▄─▀█▄─▄█─▄▄▄▄█▄─▄▄─█─▄▄─█▄─▄▄▀█▄─▀█▀─▄█▄─▄▄─█▄─▄▄▀█─▄▄▄▄█",
        "      ███─████─▄─▄██─▀─███─█▄▀─██▄▄▄▄─██─▄███─██─██─▄─▄██─█▄█─███─▄█▀██─▄─▄█▄▄▄▄─█",
        "      ▀▀▄▄▄▀▀▄▄▀▄▄▀▄▄▀▄▄▀▄▄▄▀▀▄▄▀▄▄▄▄▄▀▄▄▄▀▀▀▄▄▄▄▀▄▄▀▄▄▀▄▄▄▀▄▄▄▀▄▄▄▄▄▀▄▄▀▄▄▀▄▄▄▄▄▀",
        "                                                                                  ",
        "         █░█░█ █▀▀ █░░ █▀▀ █▀█ █▀▄▀█ █▀▀   ▀█▀ █▀█   █▄░█ █▀▀ █▀█ █░█ █ █▀▄▀█ ░   ",
        "         ▀▄▀▄▀ ██▄ █▄▄ █▄▄ █▄█ █░▀░█ ██▄   ░█░ █▄█   █░▀█ ██▄ █▄█ ▀▄▀ █ █░▀░█ █  ",
        "                                                                       ",
        "               █▀▀ █▀▀ █░░ █░░ █▀█ █░█░█   ▄▀█ █░█ ▀█▀ █▀█ █▄▄ █▀█ ▀█▀",
        "               █▀░ ██▄ █▄▄ █▄▄ █▄█ ▀▄▀▄▀   █▀█ █▄█ ░█░ █▄█ █▄█ █▄█ ░█░",
      }

      -- Custom Dashboard Buttons
      dashboard.section.buttons.val = {
        dashboard.button("f", "  Find file", ":Telescope find_files <CR>"),
        dashboard.button("e", "  New file", ":ene <BAR> startinsert <CR>"),
        dashboard.button("r", "  Recently used files", ":Telescope oldfiles <CR>"),
        dashboard.button("t", "  Find text", ":Telescope live_grep <CR>"),
        dashboard.button("c", "  Configuration", ":e ~/.config/nvim/init.vim<CR>"),
        dashboard.button("q", "  Quit Neovim", ":qa<CR>"),
      }
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

      -- Footer with Neovim version
      dashboard.section.footer.val = footer_text

      alpha.setup(dashboard.opts)
    end,
  },
}
