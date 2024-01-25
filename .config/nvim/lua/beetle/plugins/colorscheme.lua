return {
    'folke/tokyonight.nvim',
    priority = 1000,
    config = function()
        local opts = {
            style = "night",
            transparent = true,
            styles = {
                sidebars = "transparent",
                floats = "transparent",
            }
        }
        require("tokyonight").setup(opts)
        vim.cmd([[colorscheme tokyonight]])
    end,
}
