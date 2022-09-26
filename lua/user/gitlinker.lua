require"gitlinker".setup({
  opts = {
    remote = "upstream",
    action_callback = require"gitlinker.actions".open_in_browser,
  },
  mappings = "<leader>gy",
})
