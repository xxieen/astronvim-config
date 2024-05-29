-- AstroCore provides a central place to modify mappings, vim options, autocommands, and more!
-- Configuration documentation can be found with `:h astrocore`

---@type LazySpec
return {
  "AstroNvim/astrocore",
  ---@type AstroCoreOpts
  opts = {
    -- Configure core features of AstroNvim
    features = {
      large_buf = { size = 1024 * 500, lines = 10000 }, -- set global limits for large files for disabling features like treesitter
      autopairs = true, -- enable autopairs at start
      cmp = true, -- enable completion at start
      diagnostics_mode = 2, -- diagnostic mode on start (0 = off, 1 = no signs/virtual text, 2 = no virtual text, 3 = on)
      highlighturl = true, -- highlight URLs at start
      notifications = true, -- enable notifications at start
    },
    -- Diagnostics configuration (for vim.diagnostics.config({...})) when diagnostics are on
    diagnostics = {
      virtual_text = false,
      underline = true,
      update_in_insert = false,
    },
    -- vim options can be configured here
    options = {
      opt = { -- vim.opt.<key>
        relativenumber = true, -- sets vim.opt.relativenumber
        number = true, -- sets vim.opt.number
        spell = false, -- sets vim.opt.spell
        signcolumn = "yes", -- sets vim.opt.signcolumn to auto
        wrap = false, -- sets vim.opt.wrap
        -- title
        title = true,
        titlestring = " ",
      },
      g = { -- vim.g.<key>
        -- configure global vim variables (vim.g)
        -- NOTE: `mapleader` and `maplocalleader` must be set in the AstroNvim opts or before `lazy.setup`
        -- This can be found in the `lua/lazy_setup.lua` file
      },
    },
    -- Mappings can be configured through AstroCore as well.
    -- NOTE: keycodes follow the casing in the vimdocs. For example, `<Leader>` must be capitalized
    mappings = {
      -- first key is the mode
      n = {
        -- second key is the lefthand side of the map
        ["<D-s>"] = { ":w<CR>" }, --Save
        ["<D-v>"] = { '"+P' }, --Paste normal mode

        -- navigate buffer tabs with `H` and `L`
        L = { function() require("astrocore.buffer").nav(vim.v.count1) end, desc = "Next buffer" },
        H = { function() require("astrocore.buffer").nav(-vim.v.count1) end, desc = "Previous buffer" },

        -- mappings seen under group name "Buffer"
        ["<Leader>bD"] = {
          function()
            require("astroui.status.heirline").buffer_picker(
              function(bufnr) require("astrocore.buffer").close(bufnr) end
            )
          end,
          desc = "Pick to close",
        },
        -- tables with just a `desc` key will be registered with which-key if it's installed
        -- this is useful for naming menus
        -- ["<Leader>b"] = { desc = "Buffers" },
        -- quick save
        -- ["<C-s>"] = { ":w!<cr>", desc = "Save File" },  -- change description but the same command
      },
      i = {
        ["<D-s>"] = { "<ESC>:w<CR>" }, -- Save
        ["<D-v>"] = { '<ESC>l"+Pli' }, -- Paste insert mode

        ["<C-b>"] = { "<ESC>^i", desc = "move beginning of line" },
        ["<C-e>"] = { "<End>", desc = "move end of line" },
        ["<C-h>"] = { "<Left>", desc = "move left" },
        ["<C-l>"] = { "<Right>", desc = "move right" },
        ["<C-j>"] = { "<Down>", desc = "move down" },
        ["<C-k>"] = { "<Up>", desc = "move up" },
      },
      v = {
        ["<D-c>"] = { '"+y' }, -- Copy
        ["<D-v>"] = { '"+P' }, -- Paste visual mode
      },
      c = {
        ["<D-v>"] = { "<C-R>+" }, -- Paste command mode
      },
      t = {
        -- setting a mapping to false will disable it
        ["<Esc>"] = { "<Cmd>ToggleTerm<CR>", desc = "exit terminal mode" },
      },
    },
  },
}
