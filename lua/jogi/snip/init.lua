local M = {}

local ls = require "luasnip"

function M.setup()
    ls.config.set_config {
        history = true,
        updateevents = "TextChanged, TextChangedI",
        enable_autosnippets = false,
        store_selection_keys = "<C-q>"
        ext_opts = {
          [types.choiceNode] = {
            active = {
              virt_text = { { "●", "GruvboxOrange" } },
            },
          },
          [types.insertNode] = {
            active = {
              virt_text = { { "●", "GruvboxBlue" } },
            },
          },
        },
    }

    -- Lazy load snippets
    require("luasnip.loaders.from_vscode").lazy_load()

    -- Load custom snippets
    require("luasnip.loaders.from_vscode").lazy_load { paths = { "./snippets/angular" } }
end

return M
