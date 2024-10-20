local fn = vim.fn

-- Install your plugins here
return packer.startup(function(use)
  -- My plugins here
  use { "akinsho/toggleterm.nvim", commit = "12cba0a1967b4f3f31903484dec72a6100dcf515" }

  -- LSP
  use { "jose-elias-alvarez/null-ls.nvim", commit = "c0c19f32b614b3921e17886c541c13a72748d450" } -- for formatters and linters
  use { "RRethy/vim-illuminate", commit = "76f28e858f1caae87bfa45fb4fd09e4b053fc45b" } -- highlight & search word under cursor

  use { "JoosepAlviste/nvim-ts-context-commentstring", commit = "88343753dbe81c227a1c1fd2c8d764afb8d36269" }
end)
