return {
  { "williamboman/mason.nvim", config = true },
  { "williamboman/mason-lspconfig.nvim", config = true },
  {
    "neovim/nvim-lspconfig",
    config = function()
      require("plugins.lsp.lspconfig")
      require("plugins.lsp.handlers").setup()
    end,
  },
}
