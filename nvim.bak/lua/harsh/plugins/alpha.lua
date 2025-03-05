return {
  {
    "goolord/alpha-nvim",
    event = "VimEnter",
    config = function()
      local alpha = require("alpha")
      local dashboard = require("alpha.themes.dashboard")

      dashboard.opts.layout = {
        { type = "padding", val = 2 }, -- Adjust this number to reduce top space
        dashboard.section.header,
        { type = "padding", val = 3 }, -- Space between header and buttons
        dashboard.section.buttons,
        {
          type = "padding",
          val = 3,
        },
        dashboard.section.footer,
      }

      -- Custom ASCII Art Header
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

      -- Custom Dashboard Buttons
      dashboard.section.buttons.val = {
        dashboard.button("e", "  > New File", "<cmd>ene<CR>"),
        dashboard.button("SPC ee", "  > Toggle file explorer", "<cmd>lua require('snacks').explorer()<CR>"),
        dashboard.button("SPC ff", "󰱼  > Find File", "<cmd>lua require('snacks').picker.files()<CR>"),
        dashboard.button("SPC fs", "  > Find Word", "<cmd>lua require('snacks').picker.grep()<CR>"),
        dashboard.button("SPC wr", "󰁯  > Restore Session For Current Directory", "<cmd>SessionRestore<CR>"),
        dashboard.button("q", "  > Quit NVIM", "<cmd>qa<CR>"),
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
