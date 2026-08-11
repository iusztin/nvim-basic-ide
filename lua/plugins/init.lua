return {
  -- Text mutation
  { "nmac427/guess-indent.nvim" },
  {
    "kylechui/nvim-surround",
    dependencies = {
      "nvim-treesitter/nvim-treesitter-textobjects",
      "nvim-treesitter/nvim-treesitter",
    },
    opts = true,
  },
}
