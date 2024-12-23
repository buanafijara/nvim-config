return {
  {
    "williamboman/mason.nvim",
    lazy = false,
    config = function()
      require("mason").setup()
    end,
  },
  {
    "williamboman/mason-lspconfig.nvim",
    lazy = false,
    opts = {
      auto_install = true,
      ensure_installed = { 
        "lua_ls", 
        "ts_ls",
        "pyright",
        "html",
      }
    },
  },
  {
    "neovim/nvim-lspconfig",
    lazy = false,
    config = function()
      local capabilities = require("cmp_nvim_lsp").default_capabilities()

      local lspconfig = require("lspconfig")
      -- lspconfig.tsserver.setup({
      -- 	capabilities = capabilities,
      -- })
      lspconfig.ts_ls.setup({
        capabilities = capabilities,
      })
      lspconfig.solargraph.setup({
        capabilities = capabilities,
      })
      lspconfig.pyright.setup({
        capabilities = capabilities,
        -- settings = {
        -- 	pyright = {
        -- 		-- Using Ruff's import organizer
        -- 		disableOrganizeImports = true,
        -- 	},
        -- 	python = {
        -- 		analysis = {
        -- 			-- Ignore all files for analysis to exclusively use Ruff for linting
        -- 			ignore = { "*" },
        -- 		},
        -- 	},
        -- },
      })
      lspconfig.html.setup({
        capabilities = capabilities,
      })
      lspconfig.lua_ls.setup({
        capabilities = capabilities,
      })
      -- lspconfig.ruff.setup({})

      vim.keymap.set("n", "K", vim.lsp.buf.hover, { desc = "Hover Docs" })
      vim.keymap.set("n", "<leader>gd", vim.lsp.buf.definition, { desc = "Go To Definition" })
      vim.keymap.set("n", "<leader>gr", vim.lsp.buf.references, { desc = "References" })
      vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, { desc = "Code Action" })
    end,
  },
}
