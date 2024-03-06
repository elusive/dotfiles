require("obsidian").setup({
  workspaces = {
    {
      name = "Notes",
      path = "~/Library/Mobile Documents/iCloud~md~obsidian/Documents/Notes/",
    },
  },
  -- Optional, for templates (see below).
  templates = {
    subdir = "_resources/templates",
    date_format = "%Y-%m-%d",
    time_format = "%H:%M",
  },

  completion = {
    nvim_cmp = true,
    min_chars = 2,
  },

  mappings = {
    -- "Obsidian follow"
    ["<leader>of"] = {
      action = function()
        return require("obsidian").util.gf_passthrough()
      end,
      opts = { noremap = false, expr = true, buffer = true },
    },
    -- Toggle check-boxes "obsidian done"
    ["<leader>od"] = {
      action = function()
        return require("obsidian").util.toggle_checkbox()
      end,
      opts = { buffer = true },
    },
    -- Create a new note programmatically 
    ["<leader>onn"] = {
      action = function()
        return require("obsidian").commands.new_note("New Note")
      end,
      opts = { buffer = true },
    },
  },

  note_frontmatter_func = function(note)
    -- This is equivalent to the default frontmatter function.
    local out = { id = note.id, aliases = note.aliases, tags = note.tags, area = "", project = "" }

    -- `note.metadata` contains any manually added fields in the frontmatter.
    -- So here we just make sure those fields are kept in the frontmatter.
    if note.metadata ~= nil and not vim.tbl_isempty(note.metadata) then
      for k, v in pairs(note.metadata) do
        out[k] = v
      end
    end
    return out
  end,
})
