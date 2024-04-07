return {
  {
    'ThePrimeagen/harpoon',
    branch = 'harpoon2',
    dependencies = { 'nvim-lua/plenary.nvim' },
    config = function()
      local harpoon = require 'harpoon'
      harpoon:setup()

      vim.keymap.set('n', '<leader>a', function()
        harpoon:list():add()
      end, { desc = '[A]dd to Harpoon' })

      vim.keymap.set('n', '<leader>1', function()
        harpoon:list():select(1)
      end, { desc = 'Select Harpoon [1]' })

      vim.keymap.set('n', '<leader>2', function()
        harpoon:list():select(2)
      end, { desc = 'Select Harpoon [2]' })

      vim.keymap.set('n', '<leader>3', function()
        harpoon:list():select(3)
      end, { desc = 'Select Harpoon [3]' })

      vim.keymap.set('n', '<leader>4', function()
        harpoon:list():select(4)
      end, { desc = 'Select Harpoon [4]' })

      vim.keymap.set('n', '<leader>[', function()
        harpoon:list():prev()
      end, { desc = 'Select Harpoon prev' })

      vim.keymap.set('n', '<leader>]', function()
        harpoon:list():next()
      end, { desc = 'Select Harpoon next' })
    end,
  },
}
