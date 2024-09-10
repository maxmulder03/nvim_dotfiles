require("config.lazy")

require("lazy").setup({
    -- plugins installed below

    -- treesitter plugin in here
    {
        "nvim-treesitter/nvim-treesitter",
        build = ":TSUpdate",
        config = function ()
            local configs = require("nvim-treesitter.configs")

            configs.setup({
                ensure_installed = { "c", "lua", "vim", "vimdoc", "query", "elixir", "heex", "javascript", "html" },
                sync_install = false,
                highlight = { enable = true },
                indent = { enable = true },
                auto
            })
        end
    }
}) -- end of lazy vim setup

require('undotree').setup()
require("config.remap")
require("config.set")
require('feline').setup()
