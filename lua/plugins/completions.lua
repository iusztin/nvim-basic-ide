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
      completion = { documentation = { auto_show = true } },
      keymap = { preset = 'super-tab' },
      sources = {
        default = { 'lsp', 'path', 'snippets', 'buffer' },
      },
      snippets = { preset = 'luasnip' },
    },
    opts_extend = { "sources.default" }
  }
}
