return function()
  require("nightfox").setup({
    options = {
      dim_inactive = true,
    },
  })

  vim.cmd.colorscheme("nightfox")
end
