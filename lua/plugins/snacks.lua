return {
  "folke/snacks.nvim",
  version = "2.*",
  lazy = false,
  priority = 1000,
  dependencies = {
    "nvim-tree/nvim-web-devicons",
  },
  opts = {
    explorer = { enabled = true },
    input = { enabled = true },
    picker = { enabled = true },
    words = {
      enabled = true,
      modes = { "n" },
    },
  },
}
