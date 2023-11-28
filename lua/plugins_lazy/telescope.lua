return {
    'nvim-telescope/telescope.nvim',
    tag = '0.1.3',
    dependencies = {
      'nvim-lua/plenary.nvim',
      'nvim-treesitter/nvim-treesitter'
    },
    config = function()
        vim.keymap.set('n', '<leader>ff', '<Cmd>Telescope find_files<CR>')
        vim.keymap.set('n', '<leader>fg', '<Cmd>Telescope live_grep<CR>')
        vim.keymap.set('n', '<leader>fh', '<Cmd>Telescope help_tags<CR>')
        vim.keymap.set('n', '<leader>fb', function()
          require('telescope.builtin').grep_string({ search = vim.fn.input('Grep > ') })
        end)
    end
}
