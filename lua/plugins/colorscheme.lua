return {
  {
    "EdenEast/nightfox.nvim",
    lazy = false,
    priority = 1000,
    config = function()
      require('nightfox').setup({
        options = {
          dim_inactive = true, -- Dim inactive splits
        }
      })

      vim.cmd([[colorscheme nightfox]])
    end,
  }
}
