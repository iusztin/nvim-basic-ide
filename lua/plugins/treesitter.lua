return {
  {
    "nvim-treesitter/nvim-treesitter",
    branch = 'main',
    config = function()
      vim.api.nvim_create_autocmd("FileType", {
        callback = function(args)
          pcall(vim.treesitter.start, args.buf)
        end,
      })
    end,
  },
  {
    "nvim-treesitter/nvim-treesitter-textobjects",
    branch = 'main',
  },
}
