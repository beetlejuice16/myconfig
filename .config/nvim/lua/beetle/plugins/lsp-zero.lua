return {
    'VonHeikemen/lsp-zero.nvim',
    branch = 'v3.x',
    dependencies = {
        'williamboman/mason.nvim',
        'williamboman/mason-lspconfig.nvim',
        'neovim/nvim-lspconfig',
        'hrsh7th/cmp-nvim-lsp',
        'hrsh7th/nvim-cmp',
        'L3MON4D3/LuaSnip',
    },
    config = function()
        local lsp_zero = require('lsp-zero')

        lsp_zero.on_attach(function(client, bufnr)
            -- see :help lsp-zero-keybindings
            -- to learn the available actions
            -- lsp.on_attach(function(client, bufnr)
            --     local opts = { buffer = bufnr, remap = false }
            --
            --     vim.keymap.set("n", "gd", function() vim.lsp.buf.definition() end, opts)
            --     vim.keymap.set("n", "K", function() vim.lsp.buf.hover() end, opts)
            --     vim.keymap.set("n", "<leader>vws", function() vim.lsp.buf.workspace_symbol() end, opts)
            --     vim.keymap.set("n", "<leader>vd", function() vim.diagnostic.open_float() end, opts)
            --     vim.keymap.set("n", "[d", function() vim.diagnostic.goto_next() end, opts)
            --     vim.keymap.set("n", "]d", function() vim.diagnostic.goto_prev() end, opts)
            --     vim.keymap.set("n", "<leader>vca", function() vim.lsp.buf.code_action() end, opts)
            --     vim.keymap.set("n", "<leader>vrr", function() vim.lsp.buf.references() end, opts)
            --     vim.keymap.set("n", "<leader>vrn", function() vim.lsp.buf.rename() end, opts)
            --     vim.keymap.set("i", "<C-h>", function() vim.lsp.buf.signature_help() end, opts)
            --
            --     lsp.buffer_autoformat()
            -- end)
            lsp_zero.default_keymaps({ buffer = bufnr })
        end)

        -- see :help lsp-zero-guide:integrate-with-mason-nvim
        -- to learn how to use mason.nvim with lsp-zero
        require('mason').setup({})
        require('mason-lspconfig').setup({
            handlers = {
                lsp_zero.default_setup,
            }
        })
        local cmp = require('cmp')
        local cmp_action = require('lsp-zero').cmp_action()

        cmp.setup({
            mapping = {
                -- ['<CR>'] = cmp.mapping.confirm({ select = false })
                ['<C-j>'] = cmp.mapping.select_next_item(cmp_select),
                ['<C-k>'] = cmp.mapping.select_prev_item(cmp_select),
                ['<C-y>'] = cmp.mapping.confirm({ select = true }),
                -- ['<C-Space>'] = cmp.mapping.complete(),
            },
            formatting = {
                format = function(entry, vim_item)
                    vim_item.menu = ({
                        ['vim-dadbod-completion'] = '[DB]'
                    })[entry.source.name]
                    return vim_item
                end,
            },
        })

        cmp.setup.filetype({ "sql" }, {
            sources = {
                {name = "vim-dadbod-completion"},
                {name = "buffer"},
            },
        })

        lsp_zero.setup()
    end
}
