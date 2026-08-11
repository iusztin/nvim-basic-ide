return function()
  require("snacks").setup({
    explorer = { enabled = true },
    input = { enabled = true },
    picker = { enabled = true },
    words = {
      enabled = true,
      modes = { "n" },
    },
  })
end
