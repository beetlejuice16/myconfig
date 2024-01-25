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
            lsp_zero.default_keymaps({ buffer = bufnr })
            lsp_zero.default_keymaps({ buffer = bufnr })
            lsp_zero.buffer_autoformat()
        end)

        -- see :help lsp-zero-guide:integrate-with-mason-nvim
        -- to learn how to use mason.nvim with lsp-zero
        require('mason').setup({})
        require('mason-lspconfig').setup({
            handlers = {
                lsp_zero.default_setup,
            }
        })
    end
}

-- return {
--     'VonHeikemen/lsp-zero.nvim',
--     branch = 'v2.x',
--     dependencies =
--     {
--         -- LSP Support
--         { 'neovim/nvim-lspconfig' }, -- Required
--         {                            -- Optional
--             'williamboman/mason.nvim',
--             build = function()
--                 pcall(vim.cmd, 'MasonUpdate')
--             end,
--         },
--         { 'williamboman/mason-lspconfig.nvim' }, -- Optional
--         -- Autocompletion
--         { 'hrsh7th/nvim-cmp' },              -- Required
--         { 'hrsh7th/cmp-nvim-lsp' },          -- Required
--         { 'L3MON4D3/LuaSnip' },              -- Required
--     },
--     config = function()
--         local lsp = require('lsp-zero')
--
--         lsp.preset("recommended")
--
--         lsp.on_attach(function(client, bufnr)
--             lsp.default_keymaps({ buffer = bufnr })
--         end)
--
--         -- (Optional) Configure lua language server for neovim
--         require('lspconfig').lua_ls.setup(lsp.nvim_lua_ls())
--
--         local cmp = require('cmp')
--         local cmp_action = require('lsp-zero').cmp_action()
--
--         cmp.setup({
--             mapping = {
--                 ['<CR>'] = cmp.mapping.confirm({ select = false })
--             }
--         })
--
--         lsp.on_attach(function(client, bufnr)
--             local opts = { buffer = bufnr, remap = false }
--
--             vim.keymap.set("n", "gd", function() vim.lsp.buf.definition() end, opts)
--             vim.keymap.set("n", "K", function() vim.lsp.buf.hover() end, opts)
--             vim.keymap.set("n", "<leader>vws", function() vim.lsp.buf.workspace_symbol() end, opts)
--             vim.keymap.set("n", "<leader>vd", function() vim.diagnostic.open_float() end, opts)
--             vim.keymap.set("n", "[d", function() vim.diagnostic.goto_next() end, opts)
--             vim.keymap.set("n", "]d", function() vim.diagnostic.goto_prev() end, opts)
--             vim.keymap.set("n", "<leader>vca", function() vim.lsp.buf.code_action() end, opts)
--             vim.keymap.set("n", "<leader>vrr", function() vim.lsp.buf.references() end, opts)
--             vim.keymap.set("n", "<leader>vrn", function() vim.lsp.buf.rename() end, opts)
--             vim.keymap.set("i", "<C-h>", function() vim.lsp.buf.signature_help() end, opts)
--
--             lsp.buffer_autoformat()
--         end)
--
--
--         lsp.setup()
--     end
-- }
