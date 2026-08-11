return function()
  require("blink.cmp").setup({
    completion = {
      list = {
        selection = {
          preselect = false,
        },
      },
      documentation = {
        auto_show = true,
      },
    },
    keymap = {
      preset = "enter",
      ["<Tab>"] = { "select_next", "fallback" },
      ["<S-Tab>"] = { "show", "select_prev", "fallback" },

      ["<Up>"] = { "snippet_backward", "fallback" },
      ["<Down>"] = { "snippet_forward", "fallback" },
    },
    sources = {
      default = { "lsp", "path", "snippets", "buffer" },
    },
    snippets = { preset = "default" },
    enabled = function()
      return vim.bo.filetype ~= "markdown"
    end,
  })
end
