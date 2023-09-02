require('nightfox').setup({
  options = {
    dim_inactive = true, -- Dim inactive splits
  }
})

local colorscheme = "nightfox"

vim.cmd("colorscheme " .. colorscheme)
