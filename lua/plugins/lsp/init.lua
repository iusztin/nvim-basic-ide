return {
  {
    "mason-org/mason.nvim",
    version = "2.*",
    opts = {},
  },
  {
    "mason-org/mason-lspconfig.nvim",
    version = "2.*",
    opts = {
      ensure_installed = { "lua_ls", "pyright" },
      automatic_enable = false,
    },
    config = function(_, opts)
      require("mason-lspconfig").setup(opts)
      vim.lsp.enable({ "lua_ls", "pyright" })
    end,
    dependencies = {
      "mason-org/mason.nvim",
      "neovim/nvim-lspconfig",
    },
  },
  {
    "neovim/nvim-lspconfig",
    version = "2.*",
    config = function()
      require("plugins.lsp.clients.lua_ls")
      require("plugins.lsp.clients.pyright")
      require("plugins.lsp.clients.ruby_lsp")
    end,
  },
}
