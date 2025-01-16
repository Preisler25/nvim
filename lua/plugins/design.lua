return {
  -- Add gruvbox, nord, and other colorschemes
  { "ellisonleao/gruvbox.nvim" },
  { "shaunsingh/nord.nvim" },
  { "folke/tokyonight.nvim" },
  {
    "catppuccin/nvim",
    name = "catppuccin",
    priority = 1000,
    opts = {
      transparent_background = true, -- Enable transparency
      integrations = {
        -- Add plugin integrations for transparency if needed
        nvimtree = true,
        telescope = true,
        -- Add more integrations as necessary
      },
    },
  },

  -- Configure LazyVim to use catppuccin-mocha
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "catppuccin-mocha",
    },
  },

  -- Enable and configure trouble.nvim
  {
    "folke/trouble.nvim",
    opts = { use_diagnostic_signs = true },
  },

  -- Uncomment the following line to disable trouble.nvim instead:
  -- { "folke/trouble.nvim", enabled = false },
}
