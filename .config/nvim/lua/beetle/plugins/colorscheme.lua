-- return {
--     "miikanissi/modus-themes.nvim",
--     priority = 1000,
--     config = function()
--         vim.cmd([[colorscheme modus]]) -- _vivendi
--     end
-- }
return {
    "ellisonleao/gruvbox.nvim",
    priority = 1000,
    opts = { contrast = "hard" },
    config = function(_, opts)
        require("gruvbox").setup()
        vim.cmd([[colorscheme gruvbox]])
    end
}

-- return {
--     'folke/tokyonight.nvim',
--     priority = 1000,
--     opts = {
--         style = "night",
--         transparent = true,
--         styles = {
--             sidebars = "transparent",
--             floats = "transparent",
--         }
--     },
--     config = function(_, opts)
--         require("tokyonight").setup(opts)
--         vim.cmd([[colorscheme tokyonight]])
--     end,
-- }
