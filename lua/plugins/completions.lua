return {
  {
    'saghen/blink.cmp',
    dependencies = {
      'rafamadriz/friendly-snippets',
    },
    -- use a release tag to download pre-built binaries
    version = '1.*',
    opts = {
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
        preset = 'enter',
        ['<Tab>'] = { 'select_next', 'fallback' },
        ['<S-Tab>'] = { 'show', 'select_prev', 'fallback' },

        ['<Up>'] = { 'snippet_backward', 'fallback' },
        ['<Down>'] = { 'snippet_forward', 'fallback' },
      },
      sources = {
        default = { 'lsp', 'path', 'snippets', 'buffer' },
      },
      snippets = { preset = 'default' },
      enabled = function()
        return not vim.tbl_contains({ "markdown" }, vim.bo.filetype)
      end,
    },
    opts_extend = { "sources.default" }
  }
}
