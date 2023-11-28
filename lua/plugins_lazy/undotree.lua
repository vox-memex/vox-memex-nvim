return {
    'mbbill/undotree',
    config = function()
        vim.keymap.set('n', '<leader>uu', '<Cmd>UndotreeToggle<CR>')
    end
}
