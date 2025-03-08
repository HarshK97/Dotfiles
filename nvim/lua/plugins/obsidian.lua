return {
  "epwalsh/obsidian.nvim",
  version = "*", -- recommended, use latest release instead of latest commit
  lazy = true,
  ft = "markdown",
  -- Replace the above line with this if you only want to load obsidian.nvim for markdown files in your vault:
  -- event = {
  --   -- If you want to use the home shortcut '~' here you need to call 'vim.fn.expand'.
  --   -- E.g. "BufReadPre " .. vim.fn.expand "~" .. "/my-vault/*.md"
  --   -- refer to `:h file-pattern` for more examples
  --   "BufReadPre path/to/my-vault/*.md",
  --   "BufNewFile path/to/my-vault/*.md",
  -- },
  dependencies = {
    -- Required.
    "nvim-lua/plenary.nvim",

    -- see below for full list of optional dependencies 👇
  },
  opts = {
    workspaces = {
      {
        name = "Notes",
        path = "~/Desktop/Notes/",
      },
    },
    picker = {
      name = "telescope.nvim",
    },

    note_id_func = function(title)
      if title ~= nil then
        -- Remove leading number and dot if present
        local sanitized = title
          :gsub("^%d+%.", "") -- Removes leading numbers followed by a dot
          :gsub(" ", "-") -- Replace spaces with hyphens
          :gsub("[^A-Za-z0-9%-%.]", "") -- Remove invalid characters
          :gsub("^%.+", "") -- Remove leading dots
          :gsub("%.+$", "") -- Remove trailing dots

        return sanitized .. ".md"
      else
        return "Untitled.md"
      end
    end,

    note_path_func = function(spec)
      local title = spec.title or "Untitled"
      -- Replace spaces with hyphens and remove unwanted characters
      local sanitized_title = title:gsub(" ", "-"):gsub("[^A-Za-z0-9%-%.]", "")
      -- Append the .md extension
      local filename = sanitized_title .. ".md"
      -- Combine the directory path with the filename
      local path = spec.dir / filename
      return path
    end,

    -- Optional, alternatively you can customize the frontmatter data.
    note_frontmatter_func = function(note)
      return {
        Id = note.id,
        Date = os.date("%Y-%m-%d"), -- Format the date as YYYY-MM-DD
      }
    end,

    -- see below for full list of options 👇
  },
}
