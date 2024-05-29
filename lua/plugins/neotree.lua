return {
  "nvim-neo-tree/neo-tree.nvim",
  dependencies = {
    "AstroNvim/astrocore",
    opts = function(_, opts)
      local maps = opts.mappings
      maps.n["<Leader>e"] = { "<Cmd>Neotree toggle right<cr>", desc = "Toggle Explorer" }
    end,
  },
  opts = {
    window = {
      mappings = {
        ["<Tab>"] = "open",
      },
    },
  },
}
