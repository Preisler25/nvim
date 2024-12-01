return { -- add pyright to lspconfig
  -- add any tools you want to have installed below
  {
    "williamboman/mason.nvim",
    config = function()
      require("mason").setup({
        ensure_installed = {
          "stylua",
          "shellcheck",
          "shfmt",
          "flake8",
        },
      })
    end,
  },

  -- lsp config
  {
    "williamboman/mason-lspconfig.nvim",
    config = function()
      require("mason-lspconfig").setup({
        ensure_installed = {
          "ast_grep",
          "lua_ls",
        },
      })
    end,
  },
  {
    "neovim/nvim-lspconfig",
    config = function()
      local lspconfig = require("lspconfig")
      lspconfig.lua_ls.setup({})
      lspconfig.ast_grep.setup({})

      -- setting custom keymap
      vim.keymap.set("n", "K", vim.lsp.buf.hover, { buffer = 0, desc = "Show hover information" })
    end,
  },
}
