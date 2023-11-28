return {
    'nvim-tree/nvim-tree.lua',
    lazy = false,
    dependencies = {
        'nvim-tree/nvim-web-devicons',
    },
    config = function()
        local function my_on_attach(bufnr)
            local api = require 'nvim-tree.api'

            local function opts(desc)
                return { desc = 'nvim-tree: ' .. desc, buffer = bufnr, noremap = true, silent = true, nowait = true }
            end

            -- default mappings
            api.config.mappings.default_on_attach(bufnr)

            -- custom mappings
            vim.keymap.set('n', '<leader>tt', '<Cmd>NvimTreeToggle<CR>')
            vim.keymap.set('n', '<leader>tf', '<Cmd>NvimTreeFocus<CR>')
            vim.keymap.set('n', '<leader>tc', '<Cmd>NvimTreeCollapse<CR>')
        end

        require('nvim-tree').setup {
            on_attach = my_on_attach,
            view = {
              width = 40,
              number = true,
              relativenumber = true,
            }
        }
    end
}
