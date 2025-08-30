return {
  'MeanderingProgrammer/render-markdown.nvim',
  dependencies = {
    'nvim-treesitter/nvim-treesitter',
    'nvim-tree/nvim-web-devicons',
    -- LaTeX
    'jbyuki/nabla.nvim',
  },
  opts = {
    latex = { enabled = false },
    on = {
      render = function()
        require('nabla').enable_virt()
      end,
      clear = function()
        require('nabla').disable_virt()
      end,
    },
  },
}
