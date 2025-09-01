return {
  {
    "L3MON4D3/LuaSnip",
    build = "make install_jsregexp",
    version = 'v2.*',
    dependencies = { "rafamadriz/friendly-snippets" },
    config = function ()
      require("luasnip.loaders.from_vscode").lazy_load()
    end
  },
  {
    'saghen/blink.cmp',
    dependencies = {
      'rafamadriz/friendly-snippets',
      'L3MON4D3/LuaSnip',
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
      snippets = { preset = 'luasnip' },
      enabled = function()
        return not vim.tbl_contains({ "markdown" }, vim.bo.filetype)
      end,
    },
    opts_extend = { "sources.default" }
  }
}
