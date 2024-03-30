return {
  {
    'nvim-lualine/lualine.nvim',
    dependencies = { 'nvim-tree/nvim-web-devicons' },
    ---@param opts table
    config = function(opts)
      require('lualine').setup(opts)
    end,
  },
}
