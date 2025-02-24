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
          "typescript-language-server",
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
          "pyright", -- Python (for auto-imports)
          "ts_ls", -- TypeScript & JavaScript (for auto-imports)
          "gopls", -- Go
          "rust_analyzer", -- Rust
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
      lspconfig.sourcekit.setup({})
      -- Python (Auto-import enabled)
      lspconfig.pyright.setup({
        settings = {
          python = {
            analysis = {
              autoImportCompletions = true,
            },
          },
        },
      })

      -- TypeScript (Auto-import enabled)
      lspconfig.ts_ls.setup({
        settings = {
          typescript = {
            suggest = { autoImports = true, completeFunctionCalls = true },
          },
          javascript = {
            suggest = { autoImports = true, completeFunctionCalls = true },
          },
        },
      })

      -- Rust
      lspconfig.rust_analyzer.setup({})

      -- Go
      lspconfig.gopls.setup({})

      -- setting custom keymap
      vim.keymap.set("n", "K", vim.lsp.buf.hover, { buffer = 0, desc = "Show hover information" })
      vim.keymap.set("n", "<leader>rn", vim.lsp.buf.rename, { desc = "Rename symbol" })
      vim.keymap.set("n", "<leader>of", vim.lsp.buf.definition, { desc = "Go to definition" })
      vim.keymap.set("n", "<leader>oa", vim.lsp.buf.code_action, { desc = "Code action" })
      vim.keymap.set("n", "<leader>od", vim.diagnostic.open_float, { desc = "Opens diagnostic" })
    end,
  },
}
