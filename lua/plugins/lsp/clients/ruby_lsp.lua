local command = vim.fn.expand("~/.asdf/shims/ruby-lsp")

vim.lsp.config("ruby_lsp", {
  cmd = { command },
})

if vim.fn.executable(command) == 1 then
  vim.lsp.enable("ruby_lsp")
end
