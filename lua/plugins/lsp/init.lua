return function()
  require("mason").setup()

  require("plugins.lsp.clients.lua_ls")
  require("plugins.lsp.clients.pyright")
  require("plugins.lsp.clients.ruby_lsp")

  require("mason-lspconfig").setup({
    ensure_installed = { "lua_ls", "pyright" },
    automatic_enable = false,
  })

  vim.lsp.enable({ "lua_ls", "pyright" })
end
