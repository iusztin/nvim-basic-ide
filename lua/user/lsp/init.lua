require("mason").setup()
require("mason-lspconfig").setup()
require("lspconfig")
require "user.lsp.lspconfig"
require("user.lsp.handlers").setup()
require "user.lsp.null-ls"
