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
      vim.keymap.set("n", "<leader>rn", vim.lsp.buf.rename, { buffer = 0, desc = "Rename symbol" })
      vim.keymap.set("n", "<leader>oa", vim.lsp.buf.code_action, { desc = "Code action" })
      vim.keymap.set("n", "<leader>od", vim.diagnostic.open_float, { desc = "Opens diagnostic" })
    end,
  },
}
