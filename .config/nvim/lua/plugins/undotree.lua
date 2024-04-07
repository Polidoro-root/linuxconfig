return {
  {
    'mbbill/undotree',
    config = function()
      vim.keymap.set('n', '<Leader>u', '<cmd>UndotreeToggle<cr>')
    end,
  },
}
