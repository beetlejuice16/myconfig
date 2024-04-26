return {
    "folke/trouble.nvim",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    opts = {
        -- your configuration comes here
        -- or leave it empty to use the default settings
        -- refer to the configuration section below
    },
    config = function()
        vim.keymap.set("n", "<leader>xx", function() require("trouble").toggle() end, {desc = "toggle trouble"})
        vim.keymap.set("n", "<leader>xw", function() require("trouble").toggle("workspace_diagnostics") end, {desc = "toggle workspace diagnostics"})
        vim.keymap.set("n", "<leader>xd", function() require("trouble").toggle("document_diagnostics") end, {desc = "toggle document diagnostics"})
        vim.keymap.set("n", "<leader>xq", function() require("trouble").toggle("quickfix") end, {desc = "toggle quickfix"})
        vim.keymap.set("n", "<leader>xl", function() require("trouble").toggle("loclist") end, {desc = "toggle loclist"})
        vim.keymap.set("n", "gR", function() require("trouble").toggle("lsp_references") end, {desc = "toggle lsp references"})
    end
}
