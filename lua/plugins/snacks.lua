return function()
  require("snacks").setup({
    explorer = { enabled = true },
    input = { enabled = true },
    picker = {
      enabled = true,
      layouts = {
        explorer = {
          layout = {
            box = "horizontal",
            width = 0.9,
            height = 0.85,
            {
              box = "vertical",
              border = true,
              title = "{title} {live} {flags}",
              { win = "input", height = 1, border = "bottom" },
              { win = "list", border = "none" },
            },
            { win = "preview", title = "{preview}", border = true, width = 0.6 },
          },
        },
      },
      sources = {
        explorer = {
          auto_close = true,
          focus = "list",
          jump = { close = true },
          layout = { preset = "explorer", preview = true },
        },
      },
    },
    words = {
      enabled = true,
      modes = { "n" },
    },
  })
end
