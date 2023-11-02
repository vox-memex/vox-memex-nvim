return {
    'VonHeikemen/lsp-zero.nvim',
    branch = 'v3.x',
    dependencies = {
        'williamboman/mason.nvim',
        'williamboman/mason-lspconfig.nvim',
        'neovim/nvim-lspconfig',
        'hrsh7th/cmp-nvim-lsp',
        'hrsh7th/nvim-cmp',
        'L3MON4D3/LuaSnip'
    },
    config = function()
        local lsp_zero = require('lsp-zero')
        local cmp = require('cmp')
        local cmp_action = require('lsp-zero').cmp_action()
        local mason = require('mason')
        local mason_lspconfig = require('mason-lspconfig')

        lsp_zero.on_attach(function(client, bufnr)
            lsp_zero.default_keymaps({buffer = bufnr})
        end)

        -- LSP
        mason.setup({})
        mason_lspconfig.setup({
            ensure_installed = {},
            handlers = {
                lsp_zero.default_setup,
            },
        })

        --Autocomplete
        cmp.setup({
            mapping = cmp.mapping.preset.insert({
            -- `Enter` key to confirm completion
            ['<CR>'] = cmp.mapping.confirm({select = false}),

            -- Ctrl+Space to trigger completion menu
            ['<C-Space>'] = cmp.mapping.complete(),

            -- Navigate between snippet placeholder
            ['<C-f>'] = cmp_action.luasnip_jump_forward(),
            ['<C-b>'] = cmp_action.luasnip_jump_backward(),

            -- Scroll up and down in the completion documentation
            ['<C-u>'] = cmp.mapping.scroll_docs(-4),
            ['<C-d>'] = cmp.mapping.scroll_docs(4),
            })
        })
    end
}
