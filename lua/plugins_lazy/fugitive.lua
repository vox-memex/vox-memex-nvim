return {
    'tpope/vim-fugitive',
    config = function()
        vim.keymap.set('n', '<leader>gs', '<Cmd>Git<CR>')
        vim.keymap.set('n', '<leader>gd', '<Cmd>Git diff %<CR>')
        vim.keymap.set('n', '<leader>gl', '<Cmd>Git log --oneline --graph<CR>')
    end
}
