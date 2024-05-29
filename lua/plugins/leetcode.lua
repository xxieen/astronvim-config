local leet_arg = "leet"
return {
  "kawre/leetcode.nvim",
  build = ":TSUpdate html",
  cmd = "Leet",
  lazy = leet_arg ~= vim.fn.argv()[1],
  dependencies = {
    "nvim-telescope/telescope.nvim",
    "nvim-lua/plenary.nvim", -- required by telescope
    "MunifTanjim/nui.nvim",

    -- optional
    "nvim-treesitter/nvim-treesitter",
    -- "rcarriga/nvim-notify",
    "nvim-tree/nvim-web-devicons",
  },
  opts = {
    -- configuration goes here
    arg = leet_arg,
    lang = "cpp",
    cn = { -- leetcode.cn
      enabled = true, ---@type boolean
      translator = true, ---@type boolean
      translate_problems = true, ---@type boolean
    },
    injector = {
      ["cpp"] = {
        before = "#include <stdcpp.h>",
        after = "int main() { return 0; }",
      },
    },
  },
}
