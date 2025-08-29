local lspconfig = require("lspconfig")
local capabilities = require('cmp_nvim_lsp').default_capabilities()

local opts = {}
local servers = {
  "lua_ls",
  "cssls",
  "html",
  "ts_ls",
  "pyright",
  "bashls",
  "jsonls",
  "yamlls",
  "solargraph", -- Ruby
  "gopls",
  "kotlin_language_server",
}

for _, server in pairs(servers) do
  opts = {
    capabilities = capabilities,
  }

  if server == "lua_ls" then
    local lua_ls_opts = require "plugins.lsp.settings.lua_ls"
    opts = vim.tbl_deep_extend("force", lua_ls_opts, opts)
  end

  if server == "pyright" then
    local pyright_opts = require "plugins.lsp.settings.pyright"
    opts = vim.tbl_deep_extend("force", pyright_opts, opts)
  end

  lspconfig[server].setup(opts)
end
