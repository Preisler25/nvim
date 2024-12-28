return {
  -- add gruvbox and nord

  { "ellisonleao/gruvbox.nvim" },
  { "shaunsingh/nord.nvim" },
  { "folke/tokyonight.nvim" },
  { "catppuccin/nvim", name = "catppuccin", priority = 1000 },

  -- Configure LazyVim to load gruvbox
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "catppuccin-mocha",
    },
  },
  -- change trouble config
  {
    "folke/trouble.nvim",
    -- opts will be merged with the parent spec
    opts = { use_diagnostic_signs = true },
  },

  -- disable trouble
  { "folke/trouble.nvim", enabled = false },
}
