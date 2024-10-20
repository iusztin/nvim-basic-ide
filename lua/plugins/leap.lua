return {
  {
    "ggandor/leap.nvim",
    config = function()
      local ok, leap = pcall(require, "leap")
      if ok then
        leap.add_default_mappings(true)
      end
    end
  },
}
