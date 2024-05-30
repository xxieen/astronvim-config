-- AstroCommunity: import any community modules here
-- We import this file in `lazy_setup.lua` before the `plugins/` folder.
-- This guarantees that the specs are processed before any user plugins.

---@type LazySpec
return {
  "AstroNvim/astrocommunity",

  --debugging
  { import = "astrocommunity.debugging.nvim-dap-virtual-text" },

  -- workflow
  -- { import = "astrocommunity.workflow.hardtime-nvim" },

  --media
  -- { import = "astrocommunity.media.pets-nvim" },
  -- { import = "astrocommunity.media.vim-wakatime" },

  -- markdown-and-latex
  { import = "astrocommunity.markdown-and-latex.glow-nvim" },

  -- color
  -- { import = "astrocommunity.color.nvim-highlight-colors" },
  -- { import = "astrocommunity.color.transparent-nvim" },

  -- file-explorer
  { import = "astrocommunity.file-explorer.oil-nvim" },
  -- { import = "astrocommunity.file-explorer.telescope-file-browser-nvim" },

  -- bars-and-lines
  -- { import = "astrocommunity.bars-and-lines.scope-nvim" },

  -- completion
  -- { import = "astrocommunity.completion.copilot-cmp" },

  -- editing-support
  -- { import = "astrocommunity.editing-support.rainbow-delimiters-nvim" },
  { import = "astrocommunity.fuzzy-finder.telescope-zoxide" },
  { import = "astrocommunity.editing-support.nvim-treesitter-context" },
  { import = "astrocommunity.editing-support.zen-mode-nvim" },
  { import = "astrocommunity.editing-support.telescope-undo-nvim" },
  { import = "astrocommunity.editing-support.nvim-context-vt" },
  { import = "astrocommunity.editing-support.treesj" },
  { import = "astrocommunity.editing-support.vim-visual-multi" },
  { import = "astrocommunity.editing-support.yanky-nvim" },
  { import = "astrocommunity.editing-support.wildfire-nvim" },

  -- indent
  -- { import = "astrocommunity.indent.indent-blankline-nvim" },
  -- { import = "astrocommunity.indent.mini-indentscope" },

  -- lsp
  -- { import = "astrocommunity.lsp.lsp-lens-nvim" },
  { import = "astrocommunity.lsp.inc-rename-nvim" },
  -- { import = "astrocommunity.lsp.lsp-signature-nvim" },

  -- motion
  -- { import = "astrocommunity.motion.flash-nvim" },

  -- code-runner
  -- { import = "astrocommunity.code-runner.compiler-nvim" },
  -- { import = "astrocommunity.code-runner.sniprun" },

  -- language pack
  { import = "astrocommunity.pack.lua" },
  { import = "astrocommunity.pack.cpp" },
  { import = "astrocommunity.pack.markdown" },

  -- diagnostics

  -- { import = "astrocommunity.diagnostics.lsp_lines-nvim" },
  -- { import = "astrocommunity.diagnostics.error-lens-nvim" },

  -- colorscheme

  { import = "astrocommunity.colorscheme.catppuccin" },
  { import = "astrocommunity.colorscheme.dracula-nvim" },
  { import = "astrocommunity.colorscheme.monokai-pro-nvim" },
  { import = "astrocommunity.colorscheme.cyberdream-nvim" },
  { import = "astrocommunity.colorscheme.fluoromachine-nvim" },

  { import = "astrocommunity.colorscheme.everforest" },
  { import = "astrocommunity.colorscheme.rose-pine" },
  { import = "astrocommunity.colorscheme.tokyonight-nvim" },
  { import = "astrocommunity.colorscheme.gruvbox-baby" },
  { import = "astrocommunity.colorscheme.iceberg-vim" },
  { import = "astrocommunity.colorscheme.night-owl-nvim" },
  { import = "astrocommunity.colorscheme.nord-nvim" },
  { import = "astrocommunity.colorscheme.nordic-nvim" },
  { import = "astrocommunity.colorscheme.onedarkpro-nvim" },
  { import = "astrocommunity.colorscheme.poimandres-nvim" },
  { import = "astrocommunity.colorscheme.sonokai" },
  { import = "astrocommunity.colorscheme.vim-dogrun" },
  { import = "astrocommunity.colorscheme.github-nvim-theme" },

  -- recipes
  { import = "astrocommunity.recipes.astrolsp-no-insert-inlay-hints" },
  -- { import = "astrocommunity.recipes.heirline-vscode-winbar" },
  -- { import = "astrocommunity.recipes.telescope-nvchad-theme" },
  { import = "astrocommunity.recipes.heirline-mode-text-statusline" },

  -- utility
  -- { import = "astrocommunity.utility.noice-nvim" },

  -- import/override with your plugins folder
}
