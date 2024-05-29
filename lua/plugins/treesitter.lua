-- Customize Treesitter

---@type LazySpec
return {
  "nvim-treesitter/nvim-treesitter",
  opts = function(_, opts)
    -- add more things to the ensure_installed table protecting against community packs modifying it
    opts = {
      ensure_installed = require("astrocore").list_insert_unique(opts.ensure_installed, {
        "lua",
        "vim",
        "cpp",
        "c",
        "markdown",
        "html",
        -- add more arguments for adding more treesitter parsers
      }),
      -- incremental_selection = require("astrocore").list_insert_unique(opts.incremental_selection, {
      --   enable = true,
      --   keymaps = {
      --     init_selection = "<C-space>",
      --     node_incremental = "<C-space>",
      --     scope_incremental = false,
      --     node_decremental = "<bs>",
      --   },
      -- }),
    }
  end,
}
