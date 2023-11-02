return {
    'nvim-treesitter/nvim-treesitter',
    build = ':TSUpdate',
    cmd = { 'TSUpdateSync' },
    config = function()
        local configs = require('nvim-treesitter.configs')
        configs.setup({
            ensure_installed = { 'vimdoc', 'javascript', 'typescript', 'c', 'lua', 'json' },
            sync_install = false,
            auto_install = true,
            highlight = {
                enable = true,
                additional_vim_regex_highlighting = false
            }
        })
    end
}
