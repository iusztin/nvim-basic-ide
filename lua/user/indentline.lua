vim.opt.list = true
vim.opt.listchars:append "space:⋅"

require("indent_blankline").setup {
  char = "",
  show_trailing_blankline_indent = true,
  show_end_of_line = false,
  show_first_indent_level = false,
  use_treesitter = true,
  show_current_context = true,
  buftype_exclude = { "terminal", "nofile" },
  filetype_exclude = {
    "help",
    "packer",
  },
}
