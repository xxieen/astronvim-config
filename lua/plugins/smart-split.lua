return {
  "mrjones2014/smart-splits.nvim",
  event = "VeryLazy", -- load on very lazy for mux detection
  dependencies = {
    {
      "AstroNvim/astrocore",
      opts = function(_, opts)
        local maps = opts.mappings
        maps.n["<C-H>"] = { function() require("smart-splits").move_cursor_left() end, desc = "Move to left split" }
        maps.n["<C-J>"] = { function() require("smart-splits").move_cursor_down() end, desc = "Move to below split" }
        maps.n["<C-K>"] = { function() require("smart-splits").move_cursor_up() end, desc = "Move to above split" }
        maps.n["<C-L>"] = { function() require("smart-splits").move_cursor_right() end, desc = "Move to right split" }
        maps.n["<M-Up>"] = { function() require("smart-splits").resize_up() end, desc = "Resize split up" }
        maps.n["<M-Down>"] = { function() require("smart-splits").resize_down() end, desc = "Resize split down" }
        maps.n["<M-Left>"] = { function() require("smart-splits").resize_left() end, desc = "Resize split left" }
        maps.n["<M-Right>"] = { function() require("smart-splits").resize_right() end, desc = "Resize split right" }
      end,
    },
  },
  opts = { ignored_filetypes = { "nofile", "quickfix", "qf", "prompt" }, ignored_buftypes = { "nofile" } },
}
