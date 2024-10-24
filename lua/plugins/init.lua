return {
  -- Delete buffers
  { "moll/vim-bbye" },

  -- Text mutation
  {
    "numToStr/Comment.nvim",
    opts = {
      toggler = { line = "<leader>/" }
    },
  },
  { "nmac427/guess-indent.nvim" },
  {
    "kylechui/nvim-surround",
    dependencies = {
      "nvim-treesitter/nvim-treesitter-textobjects",
      "nvim-treesitter/nvim-treesitter",
    },
    opts = true,
  },

  -- File browsing
  {
    "nvim-neo-tree/neo-tree.nvim",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "nvim-tree/nvim-web-devicons",
      "MunifTanjim/nui.nvim",
    }
  },

  -- UI enhancements
  { "stevearc/dressing.nvim" },

  -- Project detection
  { "ahmedkhalf/project.nvim" },
}
